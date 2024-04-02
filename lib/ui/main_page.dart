import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/my_location_button_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/bottom_sheet_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/place_type_filter_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/map_search_bar.dart';
import 'package:yeohaeng_ttukttak/ui/main/custom_google_map/search_nearby_button_widget.dart';
import 'package:yeohaeng_ttukttak/ui/main/place/place_simple_view.dart';
import 'package:yeohaeng_ttukttak/utils/json.dart';
import 'main/custom_google_map.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModel = context.read<MapViewModel>();

      viewModel.onEvent(MapEvent.initBottomSheet(
          _key.currentContext!.size!.height -
              MediaQuery.of(context).padding.top));

      _subscription = viewModel.stream.listen((event) =>
          event.when(showSnackBar: _onShowSnackBar, moveCamera: _onMoveCamera));
    });
  }

  void _onShowSnackBar(String message) {
    final snackBar = SnackBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        content: Text(message, style: Theme.of(context).textTheme.bodyLarge));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _onMoveCamera(double latitude, double longitude) async {
    final controller = await _mapCompleter.future;

    controller.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(latitude, longitude), zoom: 13)));
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();

    final state = viewModel.state;
    final bottomSheetState = viewModel.bottomSheetState;
    final filterState = viewModel.filterState;

    bool isSheetShown =
        state.navigationIndex == 1 || state.navigationIndex == 2;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const MapSearchBar(),
        backgroundColor: (isSheetShown && bottomSheetState.isExpanded)
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.surface.withOpacity(0.0),
        scrolledUnderElevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(51.0),
          child: PlaceTypeFilterWidget(),
        ),
      ),
      body: LayoutBuilder(
          key: _key,
          builder: (context, constraints) {
            viewModel.onEvent(MapEvent.initBottomSheet(
                constraints.maxHeight - MediaQuery.of(context).padding.top));

            return Stack(children: [
              CustomGoogleMap(
                onMapCreated: (controller) async {
                  _mapCompleter.complete(controller);

                  viewModel.onEvent(const MapEvent.changeToMyPosition());
                  viewModel.onEvent(const MapEvent.findNearbyPlace());

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
                    SearchNearbyButtonWidget(),
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
                    if (isSheetShown) const BottomSheetWidget(),
                    if (filterState.selectedPlace != null)
                      PlaceSimpleView(place: filterState.selectedPlace)
                  ],
                ),
              )
            ]);
          }),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          viewModel.onEvent(const MapEvent.initBottomSheet(null));
          viewModel.onEvent(MapEvent.changeNavigation(index));
        },
        selectedIndex: state.navigationIndex,
        surfaceTintColor: Theme.of(context).colorScheme.surface,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.map),
            label: '주변',
          ),
          NavigationDestination(
            icon: Icon(Icons.place),
            label: '관광지',
          ),
          NavigationDestination(
            icon: Icon(Icons.flight),
            label: '여행',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.bookmark,
            ),
            label: '저장',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: '프로필',
          ),
        ],
      ),
    );
  }
}
