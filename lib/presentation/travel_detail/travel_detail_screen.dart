import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/models/visit_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
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

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      TravelDetailViewModel viewModel = context.read<TravelDetailViewModel>();

      _scrollController.addListener(() {
        double offset = _scrollController.offset;
        const double itemHeight = 236;

        if (offset < itemHeight) {
          viewModel.visitIndex = 0;
          return;
        }

        int index = ((offset - itemHeight) / itemHeight).ceil();
        viewModel.onEvent(TravelDetailEvent.changeVisit(index));
      });

      viewModel.stream.listen((event) =>
          event.when(moveBound: (bound, zoomLevel) async {
            LatLngBounds bounds = LatLngBounds(
                southwest:
                    LatLng(bound.southwest.latitude, bound.southwest.longitude),
                northeast: LatLng(
                    bound.northeast.latitude, bound.northeast.longitude));

            _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 50));

            if (zoomLevel == 1) {
              final curtZoomLevel = await _controller?.getZoomLevel();
              if (curtZoomLevel != null && curtZoomLevel > 14.0) {
                _controller?.moveCamera(CameraUpdate.zoomTo(14.0));
              }
            }
          }));
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TravelDetailViewModel viewModel = context.watch<TravelDetailViewModel>();

    final state = context.read<MapViewModel>().state;

    int index = context.watch<TravelDetailViewModel>().index;
    bool isDarkMode =
        MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    DailyVisitSummary? summary = context.watch<TravelDetailViewModel>().summary;

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
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  GoogleMap(
                      padding: const EdgeInsets.only(top: 60),
                      zoomGesturesEnabled: false,
                      scrollGesturesEnabled: false,
                      tiltGesturesEnabled: false,
                      rotateGesturesEnabled: false,
                      zoomControlsEnabled: false,
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
                      markers: Set.of(summary?.visits.map((visit) => Marker(
                              markerId: MarkerId(visit.place.id.toString()),
                              draggable: true,
                              anchor: const Offset(0.5, 0.5),
                              icon: summary.visits[viewModel.visitIndex].id ==
                                      visit.id
                                  ? state.selectedMarkerIcon[
                                          visit.place.type.name] ??
                                      BitmapDescriptor.defaultMarker
                                  : state.markerIcon[visit.place.type.name] ??
                                      BitmapDescriptor.defaultMarker,
                              position: LatLng(visit.place.location.latitude,
                                  visit.place.location.longitude))) ??
                          [])),
                  Positioned(
                      bottom: 20,
                      right: 15,
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          IconButton(
                            onPressed:
                                context.watch<TravelDetailViewModel>().canZoomIn
                                    ? () => {
                                          if (viewModel.canZoomIn)
                                            viewModel.zoomLevel++
                                        }
                                    : null,
                            icon: const Icon(Icons.add),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.surface)),
                          ),
                          IconButton(
                            onPressed: context
                                    .watch<TravelDetailViewModel>()
                                    .canZoomOut
                                ? () => {
                                      if (viewModel.canZoomOut)
                                        viewModel.zoomLevel--
                                    }
                                : null,
                            icon: const Icon(Icons.remove),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.surface)),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: constraints.maxHeight * 0.6,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20))),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            width: 25,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.outline,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
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
                            color:
                                Theme.of(context).colorScheme.outlineVariant),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView.separated(
                          padding: const EdgeInsets.only(top: 24),
                          controller: _scrollController,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            if (index == summary!.visits.length) {
                              return SizedBox(
                                height: 210,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () =>
                                        _scrollController.animateTo(
                                      0,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.bounceIn,
                                    ),
                                    icon: const Icon(Icons.arrow_upward),
                                  ),
                                ),
                              );
                            }

                            VisitModel visit = summary.visits[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                    title: Text(visit.place.name),
                                    contentPadding: EdgeInsets.zero,
                                    subtitle: Text(visit.place.type.label),
                                    titleTextStyle: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(fontWeight: FontWeight.w600),
                                    subtitleTextStyle:
                                        Theme.of(context).textTheme.bodyMedium,
                                    leading: SvgPicture.asset(
                                        width: 24,
                                        height: 24,
                                        "assets/markers/${visit.place.type.name}.svg"),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.bookmark_outline),
                                      onPressed: () {},
                                    )),
                                SizedBox(
                                    height: 164,
                                    child: InfiniteCarousel.builder(
                                        itemCount: max(1, visit.images.length),
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
                                              child: index < visit.images.length
                                                  ? Image.network(
                                                      visit
                                                          .images[index].medium,
                                                      fit: BoxFit.cover,
                                                      errorBuilder: (context,
                                                              exception,
                                                              trace) =>
                                                          defaultImage)
                                                  : defaultImage);
                                        })),
                              ],
                            );
                          },
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 16),
                          itemCount:
                              summary != null ? summary.visits.length + 1 : 0)),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        child: Row(
          children: [
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasPrev
                    ? () {
                        viewModel.prev();
                      }
                    : null,
                child: const Text("어제")),
            TextButton(
                onPressed: context.watch<TravelDetailViewModel>().hasNext
                    ? () => viewModel.next()
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
