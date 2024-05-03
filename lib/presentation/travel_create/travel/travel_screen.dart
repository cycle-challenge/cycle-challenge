import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/components/travel_modify_bottom_app_bar.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/components/visit_list_view.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/components/visit_modify_list_view.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_screen.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';

class TravelScreen extends StatefulWidget {
  final Travel travel;

  const TravelScreen({super.key, required this.travel});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  GoogleMapController? _controller;
  final PanelController _panelController = PanelController();

  StreamSubscription? _subscription;

  bool _isCameraMovingProgrammatically = false;
  bool _isPanelTouching = false;
  bool _isScrollingUp = false;

  // top padding + drag handle
  final double panelHeaderHeight = 50;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<TravelViewModel>();
      _subscription =
          viewModel.stream.listen((event) => event.when(moveArea: _moveArea));
    });

    WidgetsBinding.instance.addPostFrameCallback(
        (_) => _panelController.animatePanelToPosition(0.65));
  }

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
    _controller?.dispose();
  }

  void _moveArea(VisitArea area) async {
    LatLngBounds bounds = LatLngBounds(
        southwest: LatLng(area.swLat, area.swLon),
        northeast: LatLng(area.neLat, area.neLon));

    _isCameraMovingProgrammatically = true;
    await _controller?.moveCamera(CameraUpdate.newLatLngBounds(bounds, 50));
    _isCameraMovingProgrammatically = false;
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<TravelViewModel>();
    final mapViewModel = context.watch<MapViewModel>();

    final state = viewModel.state;
    final mapState = mapViewModel.state;

    final List<Visit> visits = state.items
        .map((e) => e.whenOrNull(item: (visit) => visit))
        .whereType<Visit>()
        .toList();

    final bool isPanelExpanded =
        _panelController.isAttached && _panelController.panelPosition == 1.0;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    bool isBookmarked =
        bookmarkViewModel.state.travelIdSet.contains(widget.travel.id);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                  border: isPanelExpanded
                      ? Border(
                          bottom: BorderSide(
                              width: 1, color: colorScheme.outlineVariant))
                      : null,
                  color: isPanelExpanded
                      ? colorScheme.surface.withOpacity(1)
                      : colorScheme.surface.withOpacity(0)),
              child: AppBar(
                  centerTitle: false,
                  scrolledUnderElevation: 0,
                  backgroundColor: colorScheme.surface.withOpacity(0.0),
                  title: Text(widget.travel.name,
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600)),
                  flexibleSpace: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                        colorScheme.surface,
                        colorScheme.surface.withOpacity(0.75),
                        colorScheme.surface.withOpacity(0.5),
                        colorScheme.surface.withOpacity(0.3),
                        colorScheme.surface.withOpacity(0),
                      ])))))),
      body: LayoutBuilder(builder: (context, constraints) {
        MediaQueryData mediaQuery = MediaQuery.of(context);

        const double panelMinHeight = 60;
        final double panelMaxHeight =
            constraints.maxHeight - mediaQuery.padding.top + panelHeaderHeight;

        final double gapHeight =
            max((panelMaxHeight - panelMinHeight) - state.panelHeight, 0);

        return SlidingUpPanel(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            panelSnapping: true,
            snapPoint: 0.65,
            borderRadius: !isPanelExpanded
                ? const BorderRadius.vertical(top: Radius.circular(20))
                : null,
            minHeight: panelMinHeight,
            maxHeight: panelMaxHeight,
            color: colorScheme.surface,
            controller: _panelController,
            onPanelSlide: (double pos) {
              final height = pos * (panelMaxHeight - panelMinHeight);
              viewModel.onEvent(TravelEvent.setPanelHeight(height));

              if (!_panelController.isPanelAnimating &&
                  !_isPanelTouching &&
                  pos < 1.0) {
                viewModel.onEvent(const TravelEvent.initCamera());
              }
            },
            panel: Listener(
                onPointerUp: (_) => _isPanelTouching = false,
                onPointerDown: (_) => _isPanelTouching = true,
                onPointerMove: (event) {
                  if (!_isPanelTouching) return;
                  if (_panelController.isPanelAnimating) return;
                  if (!isPanelExpanded) return;

                  _isScrollingUp = event.delta.dy >= 10;

                  if (_isScrollingUp &&
                      _isPanelTouching &&
                      !state.canPanelScrollUp) {
                    _panelController.animatePanelToSnapPoint(
                        duration: const Duration(milliseconds: 150));
                  }
                },
                child: state.isModifying
                    ? VisitModifyListView(gapHeight: gapHeight)
                    : VisitListView(gapHeight: gapHeight)),
            body: Stack(
              children: [
                Positioned.fill(
                    child: GoogleMap(
                        padding: EdgeInsets.only(
                            top: mediaQuery.padding.top,
                            bottom: state.panelHeight + 185),
                        myLocationButtonEnabled: false,
                        initialCameraPosition: const CameraPosition(
                          target: LatLng(36.6272, 127.4987),
                          zoom: 13,
                        ),
                        onCameraMoveStarted: () {
                          if (_isCameraMovingProgrammatically) return;
                          viewModel.onEvent(
                              const TravelEvent.setIsCameraMoved(true));
                        },
                        onMapCreated: (GoogleMapController controller) async {
                          bool isDarkMode =
                              MediaQuery.platformBrightnessOf(context) ==
                                  Brightness.dark;

                          String path = isDarkMode
                              ? "assets/map/map_style_dark.json"
                              : "assets/map/map_style.json";
                          controller.setMapStyle(await getJsonFile(path));
                          _controller = controller;
                        },
                        markers: Set.of(visits.mapWithIndex((visit, index) =>
                            Marker(
                                markerId: MarkerId(visit.id.toString()),
                                draggable: true,
                                zIndex: index == state.visitIndex ? 2 : 1,
                                anchor: const Offset(0.5, 0.5),
                                icon: (index == state.visitIndex &&
                                            !state.isModifying
                                        ? mapState.selectedMarkerIcon[
                                            visit.place.type.name]
                                        : mapState.markerIcon[
                                            visit.place.type.name]) ??
                                    BitmapDescriptor.defaultMarker,
                                position: LatLng(visit.place.latitude,
                                    visit.place.longitude)))))),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: state.panelHeight + 185,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: state.isCameraMoved == true
                        ? Center(
                            child: FilledButton.icon(
                                style: FilledButton.styleFrom(
                                    backgroundColor: colorScheme.surface,
                                    foregroundColor: colorScheme.onSurface),
                                onPressed: () => viewModel
                                    .onEvent(const TravelEvent.initCamera()),
                                icon: const Icon(Icons.refresh),
                                label: const Text("카메라 초기화")),
                          )
                        : null,
                  ),
                ),
                if (!state.isModifying)
                  Positioned(
                      right: 16,
                      bottom: state.panelHeight + 185,
                      child: IconButton(
                          style: IconButton.styleFrom(
                              backgroundColor: colorScheme.surface,
                              foregroundColor: colorScheme.onSurface),
                          onPressed: () => viewModel.onEvent(
                              TravelEvent.setIsViewExpanded(
                                  !state.isViewExpanded)),
                          icon: Icon(state.isViewExpanded
                              ? Icons.expand_less
                              : Icons.expand_more)))
              ],
            ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: state.isModifying
          ? FloatingActionButton(
              onPressed: () => viewModel.onEvent(const TravelEvent.editComplete()),
              elevation: 0,
              backgroundColor: colorScheme.secondaryContainer,
              foregroundColor: colorScheme.onSecondaryContainer,
              child: const Icon(Icons.save))
          : FloatingActionButton(
              onPressed: isBookmarked
                  ? () => bookmarkViewModel
                      .onEvent(BookmarkEvent.deleteTravel(widget.travel))
                  : () => bookmarkViewModel
                      .onEvent(BookmarkEvent.addTravel(widget.travel)),
              elevation: 0,
              backgroundColor: colorScheme.secondaryContainer,
              child: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                  color: colorScheme.onSurface),
            ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: colorScheme.outlineVariant))),
          child: state.isModifying
              ? const TravelModifyBottomAppBar()
              : BottomAppBar(surfaceTintColor: colorScheme.surface)),
    );
  }
}
