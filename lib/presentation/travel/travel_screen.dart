import 'dart:async';
import 'dart:math';

import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_page.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_section.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/travel_modify_bottom_app_bar.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/visit_list_view.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_add_visit/travel_add_visit_page.dart';

import 'package:yeohaeng_ttukttak/utils/json.dart';
import 'package:yeohaeng_ttukttak/utils/marker.dart';

import 'components/visit_modify_list_view.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  GoogleMapController? _controller;
  final Completer<GoogleMapController> _mapCompleter = Completer();
  final PanelController _panelController = PanelController();

  StreamSubscription? _subscription;

  bool _isCameraMovingProgrammatically = false;
  bool _isPanelTouching = false;
  bool _isScrollingUp = false;

  // top padding + drag handle
  final double panelHeaderHeight = 50;

  Set<Marker> prevMarkers = {};

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
    final controller = await _mapCompleter.future;

    LatLngBounds bounds = LatLngBounds(
        southwest: LatLng(area.swLat, area.swLon),
        northeast: LatLng(area.neLat, area.neLon));

    _isCameraMovingProgrammatically = true;
    await controller.moveCamera(CameraUpdate.newLatLngBounds(bounds, 50));
    _isCameraMovingProgrammatically = false;
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<TravelViewModel>();

    final state = viewModel.state;

    final List<Visit> visits = state.items
        .map((e) => e.whenOrNull(item: (visit) => visit))
        .whereType<Visit>()
        .toList();

    final List<Place> places = visits.map((visit) => visit.place).toList();
    final Place? selectedPlace = visits.elementAtOrNull(state.visitIndex)?.place;

    final bool isPanelExpanded =
        _panelController.isAttached && _panelController.panelPosition == 1.0;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    bool isBookmarked =
        bookmarkViewModel.state.travelIdSet.contains(state.travel.id);

    final authViewModel = context.watch<AuthViewModel>();
    final member = authViewModel.state.member;

    bool isModifiable =
        member != null && member.nickname == state.travel.nickname;

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
                  title: Text(state.travel.name,
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600)),
                  actions: isModifiable
                      ? [
                          TextButton(
                              style: TextButton.styleFrom(
                                  textStyle: textTheme.bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.w600),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16)),
                              onPressed: () => viewModel.onEvent(
                                  state.isModifying
                                      ? const TravelEvent.editComplete()
                                      : const TravelEvent.editStart()),
                              child: Text(state.isModifying ? '완료' : '수정')),
                          const SizedBox(width: 12)
                        ]
                      : null,
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
            body: Stack(children: [
              GoogleMapPage(mapCompleter: _mapCompleter,
                padding: EdgeInsets.only(
                    top: mediaQuery.padding.top,
                    bottom: state.panelHeight + 185),
                places: places,
                selectedPlace: selectedPlace,
                onCameraMoveStarted: () {
                  if (_isCameraMovingProgrammatically) return;
                  viewModel.onEvent(
                      const TravelEvent.setIsCameraMoved(true));
                },
              ),
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
            ]));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: isModifiable
          ? FloatingActionButton(
              onPressed: () async {
                final places = await Navigator.of(context).push<List<Place>>(
                    MaterialPageRoute(
                        builder: (_) => const TravelAddVisitPage()));

                if (places == null) return;
                viewModel.onEvent(TravelEvent.addVisit(places));
              },
              elevation: 0,
              backgroundColor: colorScheme.secondaryContainer,
              foregroundColor: colorScheme.onSecondaryContainer,
              child: const Icon(Icons.add))
          : FloatingActionButton(
              onPressed: isBookmarked
                  ? () => bookmarkViewModel
                      .onEvent(BookmarkEvent.deleteTravel(state.travel))
                  : () => bookmarkViewModel
                      .onEvent(BookmarkEvent.addTravel(state.travel)),
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
