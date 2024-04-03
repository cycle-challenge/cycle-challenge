import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';
import 'package:yeohaeng_ttukttak/di/setup_providers.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/components/init_view_button_widget.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

class TravelDetailScreen extends StatefulWidget {
  final TravelModel travel;

  const TravelDetailScreen({super.key, required this.travel});

  @override
  State<TravelDetailScreen> createState() => _TravelDetailScreenState();
}

class _TravelDetailScreenState extends State<TravelDetailScreen> {
  GoogleMapController? _controller;

  final double itemHeight = 252;
  final _scrollController = ScrollController();
  final _panelController = PanelController();
  bool _isListenerEnabled = true;

  StreamSubscription? _subscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      TravelDetailViewModel viewModel = context.read<TravelDetailViewModel>();

      _scrollController.addListener(() {
        if (!_isListenerEnabled) return;
        viewModel
            .onEvent(TravelDetailEvent.scrollVisit(_getCurrentIndexByScroll()));
      });

      _subscription = viewModel.stream.listen((event) => event.when(
          moveBound: _moveBound,
          initScroll: _initScroll,
          showSnackBar: _showSnackBar,
          moveScroll: _moveScroll));
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {

      _panelController.animatePanelToPosition(0.65);

    });
  }

  int _getCurrentIndexByScroll() {
    double offset = _scrollController.offset;

    if (offset < itemHeight) return 0;

    return ((offset - itemHeight) / itemHeight).ceil();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _subscription?.cancel();
    super.dispose();
  }

  void _moveScroll(int index) {
    double offset = itemHeight * index;

    _isListenerEnabled = false;
    _scrollController.jumpTo(offset);

    Future.delayed(
        const Duration(milliseconds: 100), () => _isListenerEnabled = true);
  }

  void _moveBound(Bound bound) async {
    _getCurrentIndexByScroll();
    LatLngBounds bounds = LatLngBounds(
        southwest: LatLng(bound.southwest.latitude, bound.southwest.longitude),
        northeast: LatLng(bound.northeast.latitude, bound.northeast.longitude));

    _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 50));
  }

  void _initScroll() {
    Future.delayed(
        const Duration(milliseconds: 10),
        () => _scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.bounceIn,
            ));
  }

  void _showSnackBar(message) {
    final snackBar = SnackBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        content: Text(message, style: Theme.of(context).textTheme.bodyLarge),
        duration: const Duration(seconds: 1));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    TravelDetailViewModel viewModel = context.watch<TravelDetailViewModel>();

    final state = context.read<MapViewModel>().state;

    int index = context.watch<TravelDetailViewModel>().index;
    bool isDarkMode =
        MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    DailyVisitSummary? summary = context.watch<TravelDetailViewModel>().summary;

    final hasNext = viewModel.index + 1 < viewModel.dailySummaries.length;
    final hasPrev = viewModel.index - 1 >= 0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
                onPressed: () {},
                icon: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Icons.copy),
                )),
          ),
        ],
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        const double panelMinHeight = 135;
        final double panelMaxHeight =
            constraints.maxHeight - MediaQuery.of(context).padding.top;

        return Stack(children: [
          SlidingUpPanel(
            controller: _panelController,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            panelSnapping: true,
            snapPoint: 0.65,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            minHeight: panelMinHeight,
            maxHeight: panelMaxHeight,
            color: Theme.of(context).colorScheme.surface,
            onPanelSlide: (double pos) {
              final height = pos * (panelMaxHeight - panelMinHeight);

              if (height == (panelMaxHeight - panelMinHeight)) {
                _isListenerEnabled = false;
              } else {
                _isListenerEnabled = true;
              }

              viewModel.onEvent(TravelDetailEvent.changePanelHeight(height));

              if (!_panelController.isPanelAnimating) {
                viewModel.onEvent(const TravelDetailEvent.initView());
              }
            },
            body: GoogleMap(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    bottom: viewModel.panelHeight + 250),
                myLocationButtonEnabled: false,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(36.6272, 127.4987),
                  zoom: 13,
                ),
                onMapCreated: (GoogleMapController controller) async {
                  String path = isDarkMode
                      ? "assets/map/map_style_dark.json"
                      : "assets/map/map_style.json";
                  controller.setMapStyle(await getJsonFile(path));
                  _controller = controller;
                },
                onCameraMove: (_) {
                  if (!_panelController.isPanelAnimating && !viewModel.isShownInitViewButton && _isListenerEnabled) {
                    viewModel
                        .onEvent(const TravelDetailEvent.showInitViewButton());
                  }
                },
                markers: Set.of(summary?.visits.mapWithIndex((visit, index) {
                      final place = visit.place;
                      final selectedPlace =
                          summary.visits[viewModel.visitIndex].place;

                      final bool isSelected = selectedPlace.id == place.id;
                      return Marker(
                          markerId: MarkerId(visit.place.id.toString()),
                          draggable: true,
                          anchor: const Offset(0.5, 0.5),
                          zIndex: isSelected ? 2 : 1,
                          icon: isSelected
                              ? state.selectedMarkerIcon[
                                      visit.place.type.name] ??
                                  BitmapDescriptor.defaultMarker
                              : state.markerIcon[visit.place.type.name] ??
                                  BitmapDescriptor.defaultMarker,
                          position: LatLng(visit.place.location.latitude,
                              visit.place.location.longitude),
                          onTap: () => viewModel
                              .onEvent(TravelDetailEvent.changeVisit(index)));
                    }) ??
                    [])),
            panel: Column(
              children: [
                SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 12),
                              width: 25,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.outline,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8)),
                              ),
                            ),
                          ),
                          Text("${index + 1}일 차",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.copyWith(fontWeight: FontWeight.w600)),
                          Text(
                            widget.travel.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Container(
                              height: 1,
                              margin: const EdgeInsets.only(top: 12),
                              color: Theme.of(context)
                                  .colorScheme
                                  .outlineVariant)
                        ])),
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        controller: _scrollController,
                        physics: const ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          if (index == summary!.visits.length) {
                            return SizedBox(
                              height: 210,
                              child: Center(
                                child: IconButton(
                                  onPressed: () => _initScroll(),
                                  icon: const Icon(Icons.arrow_upward),
                                ),
                              ),
                            );
                          }

                          VisitModel visit = summary.visits[index];
                          return Container(
                            height: 252,
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                    title: Text(visit.place.name),
                                    contentPadding: EdgeInsets.zero,
                                    subtitle: Text(visit.place.type.label),
                                    titleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontWeight: FontWeight.w600),
                                    subtitleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium,
                                    leading: SvgPicture.asset(
                                        width: 24,
                                        height: 24,
                                        "assets/markers/${visit.place.type.name}.svg"),
                                    trailing: IconButton(
                                      icon:
                                          const Icon(Icons.bookmark_outline),
                                      onPressed: () {},
                                    )),
                                SizedBox(
                                    height: 164,
                                    child: InfiniteCarousel.builder(
                                        itemCount:
                                            max(1, visit.images.length),
                                        itemExtent: 167,
                                        center: false,
                                        itemBuilder: (context, index, _) {

                                          final defaultImage = Image.asset(
                                              "assets/image/default.png",
                                              fit: BoxFit.cover);

                                          return Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 3),
                                              child: index <
                                                      visit.images.length
                                                  ? Image.network(
                                                      visit.images[index]
                                                          .medium,
                                                      fit: BoxFit.cover,
                                                      errorBuilder: (context,
                                                              exception,
                                                              trace) =>
                                                          defaultImage)
                                                  : defaultImage);
                                        })),
                              ],
                            ),
                          );
                        },
                        itemCount:
                            summary != null ? summary.visits.length + 1 : 0)),
                Container(height: max((panelMaxHeight - panelMinHeight) - viewModel.panelHeight, 0))
              ],
            ),
          ),
          Positioned(
            bottom: viewModel.panelHeight + 150,
            child: AnimatedOpacity(
              opacity: viewModel.panelHeight + 150 < panelMaxHeight ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: Container(
                width: constraints.maxWidth,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [InitViewButtonWidget()]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => viewModel
                              .onEvent(const TravelDetailEvent.toggleMapView()),
                          icon: viewModel.isEntireMapView
                              ? const Icon(Icons.remove)
                              : const Icon(Icons.add),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.surface)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ]);
      }),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        child: Row(
          children: [
            TextButton(
                onPressed: hasPrev
                    ? () => viewModel
                        .onEvent(const TravelDetailEvent.prevDayOfTravel())
                    : null,
                child: const Text("어제")),
            TextButton(
                onPressed: hasNext
                    ? () => viewModel
                        .onEvent(const TravelDetailEvent.nextDayOfTravel())
                    : null,
                child: const Text("내일")),
          ],
        ),
      ),
    );
  }
}

class TravelDetailPage extends StatelessWidget {
  final TravelModel travel;

  const TravelDetailPage({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TravelDetailViewModel>(
        create: (context) => TravelDetailViewModel(travel.id),
        child: TravelDetailScreen(travel: travel));
  }
}

extension MapWithIndex<T> on List<T> {
  List<R> mapWithIndex<R>(R Function(T, int i) callback) {
    List<R> result = [];
    for (int i = 0; i < this.length; i++) {
      R item = callback(this[i], i);
      result.add(item);
    }
    return result;
  }
}
