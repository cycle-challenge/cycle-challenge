import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
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
import 'package:yeohaeng_ttukttak/presentation/search/search_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';
import 'components/map/map_view.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final GlobalKey _key = GlobalKey();
  GoogleMapController? _mapCompleter;
  StreamSubscription? _subscription;

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<MapViewModel>();
      _subscription = viewModel.stream
          .listen((event) => event.when(moveCamera: _onMoveCamera));
    });
  }

  void _onMoveCamera(double latitude, double longitude) async {
    final viewModel = context.read<MapViewModel>();

    final position =
        CameraPosition(target: LatLng(latitude, longitude), zoom: 13);
    _mapCompleter?.moveCamera(CameraUpdate.newCameraPosition(position));

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

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(115),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            color:
                (isSheetShown && mainState.isExpanded && !mainState.isAnimating)
                    ? Theme.of(context).colorScheme.surface
                    : Theme.of(context).colorScheme.surface.withOpacity(0.0),
          ),
          child: AppBar(
            title: SearchBarWidget(),
            backgroundColor:
                Theme.of(context).colorScheme.surface.withOpacity(0.0),
            scrolledUnderElevation: 0,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(51.0),
              child: FilterView(),
            ),
          ),
        ),
      ),
      body: LayoutBuilder(
          key: _key,
          builder: (context, constraints) {
            mainViewModel.onEvent(MainEvent.initBottomSheet(
                constraints.maxHeight - MediaQuery.of(context).padding.top));

            return Stack(children: [
              MapView(
                onMapCreated: (controller) async {
                  _mapCompleter = controller;

                  viewModel.onEvent(const MapEvent.changeToMyPosition());
                  Future.delayed(const Duration(seconds: 2), () {
                    viewModel.onEvent(const MapEvent.findNearbyPlace());
                  });

                  final Brightness brightness =
                      MediaQuery.platformBrightnessOf(context);

                  String path = brightness == Brightness.dark
                      ? "assets/map/map_style_dark.json"
                      : "assets/map/map_style.json";
                  controller.setMapStyle(await getJsonFile(path));
                },
              ),
              const SafeArea(
                  child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SearchButtonWidget(),
                  ],
                ),
              )),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyLocationButtonWidget(
                        onTap: () => viewModel
                            .onEvent(const MapEvent.changeToMyPosition())),
                    const SizedBox(
                      height: 20,
                    ),
                    if (isPlaceSelected)
                      PlaceSimpleView(place: filterState.selectedPlace),
                    if (isSheetShown) const BottomSheetView(),
                  ],
                ),
              )
            ]);
          }),
    );
  }
}
