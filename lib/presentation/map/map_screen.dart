import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_page.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/map/my_location_button_widget.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/components/bottom_sheet_view.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/filter/filter_view.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/map/map_search_widget.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/map/search_button_widget.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_simple_view.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final GlobalKey _key = GlobalKey();

  final Completer<GoogleMapController> _mapCompleter = Completer();

  StreamSubscription? _subscription;

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final viewModel = context.read<MapViewModel>();

      viewModel.onEvent(const MapEvent.changeToMyPosition());
      Future.delayed(const Duration(seconds: 2), () {
        viewModel.onEvent(const MapEvent.findNearbyPlace());
      });

      _subscription = viewModel.stream
          .listen((event) => event.when(moveCamera: _onMoveCamera));
    });
  }

  void _onMoveCamera(double latitude, double longitude) async {
    final viewModel = context.read<MapViewModel>();

    final controller = await _mapCompleter.future;

    final position =
        CameraPosition(target: LatLng(latitude, longitude), zoom: 13);
    controller.moveCamera(CameraUpdate.newCameraPosition(position));

    viewModel.onEvent(MapEvent.changePosition(position));
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final mainViewModel = context.watch<MainViewModel>();

    final mainState = mainViewModel.state;
    final filterState = viewModel.filterState;

    final isPlaceSelected = viewModel.filterState.selectedPlace != null;

    bool isSheetShown =
        (mainState.navigationIndex == 1 || mainState.navigationIndex == 2) &&
            !isPlaceSelected;

    final bottomPadding = MediaQuery.of(context).padding.bottom;

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final isAppBarExpanded =
        (isSheetShown && mainState.isExpanded && !mainState.isAnimating);
    final colorTheme = Theme.of(context).colorTheme;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: SearchBarWidget(),
          backgroundColor: colorScheme.surface.withOpacity(0.0),
          scrolledUnderElevation: 0,
          flexibleSpace: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    colorTheme.background.withOpacity(isAppBarExpanded ? 1 : 0.75),
                    colorTheme.background.withOpacity(isAppBarExpanded ? 1 : 0)
                  ]))),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: FilterView(),
          ),
        ),
        body: LayoutBuilder(
            key: _key,
            builder: (context, constraints) {
              mainViewModel.onEvent(MainEvent.initBottomSheet(
                  constraints.maxHeight - MediaQuery.of(context).padding.top));

              return Stack(children: [
                GoogleMapPage(
                    mapCompleter: _mapCompleter,
                    places: filterState.filteredPlaces,
                    selectedPlace: filterState.selectedPlace,
                    padding: MediaQuery.of(context).padding,
                    onTap: () =>
                        viewModel.onEvent(const MapEvent.selectPlace(null)),
                    onTapMarker: (place) =>
                        viewModel.onEvent(MapEvent.selectPlace(place)),
                    onCameraMove: (position) =>
                        viewModel.onEvent(MapEvent.changePosition(position))),
                const SafeArea(
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Column(children: [SearchButtonWidget()]))),
                SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (!isPlaceSelected)
                            MyLocationButtonWidget(
                                onTap: () => viewModel.onEvent(
                                    const MapEvent.changeToMyPosition())),
                          const SizedBox(height: 20),
                          if (isPlaceSelected)
                            PlaceSimpleView(place: filterState.selectedPlace!),
                          if (isSheetShown) const BottomSheetView(),
                          if (!isSheetShown) SizedBox(height: bottomPadding),
                        ]))
              ]);
            }));
  }
}
