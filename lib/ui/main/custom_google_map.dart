import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';

import '../../data/models/place_model.dart';
import '../../states/bottom_sheet_state.dart';
import '../../states/google_map_state.dart';
import '../../states/travel_view_model.dart';
import '../../utils/json.dart';
import '../../utils/marker.dart';

class CustomGoogleMap extends StatelessWidget {
  Future<Map<String, Map<String, BitmapDescriptor>>> _loadMarkers() async {
    final Map<String, BitmapDescriptor> markerIcon = {},
        selectedMarkerIcon = {};

    for (PlaceType type in PlaceType.values) {
      markerIcon[type.name] = await loadSvg(
          "assets/markers/${type.name}.svg", const Size(24.0, 24.0));
      selectedMarkerIcon[type.name] = await loadSvg(
          "assets/markers/select/${type.name}.svg", const Size(28.0, 37.0));
    }

    return {"markerIcon": markerIcon, "selectedMarkerIcon": selectedMarkerIcon};
  }

  @override
  Widget build(BuildContext context) {
    List<PlaceModel> places = context.watch<TravelViewModel>().places;

    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    bool isDarkMode = brightness == Brightness.dark;

    return FutureBuilder(
      future: _loadMarkers(),
      builder: (BuildContext context,
          AsyncSnapshot<Map<String, Map<String, BitmapDescriptor>>> snapshot) {
        if (snapshot.hasData == false || snapshot.data == null) {
          return const CircularProgressIndicator();
        }
        if (snapshot.hasError) return const SizedBox();

        Map<String, BitmapDescriptor> markerIcon =
            snapshot.data!["markerIcon"]!;
        Map<String, BitmapDescriptor> selectedMarkerIcon =
            snapshot.data!["selectedMarkerIcon"]!;

        return GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: LatLng(36.6272, 127.4987),
            zoom: 13,
          ),
          onMapCreated: (GoogleMapController controller) async {
            context.read<GoogleMapState>().init(controller);
            context.read<TravelViewModel>().search(36.6272, 127.4987);

            String path = isDarkMode
                ? "assets/map/map_style_dark.json"
                : "assets/map/map_style.json";
            controller.setMapStyle(await getJsonFile(path));
          },
          onCameraMoveStarted: () {
            context.read<GoogleMapState>().setIsMoving(true);
          },
          onTap: (_) {
            popNavigate(context);
            context.read<BottomSheetState>().init();
            context.read<TravelViewModel>().unSelectPlace();
          },
          markers: Set.of(places.map((e) => Marker(
              markerId: MarkerId(e.id.toString()),
              onTap: () {
                pushNavigate(context);
                context.read<TravelViewModel>().selectPlace(e.id);
                context.read<BottomSheetState>().setIsSheetShown(true);
                context.read<NavigationState>().setSelectedIndex(0);
              },
              draggable: true,
              icon: context.read<TravelViewModel>().selectedPlaceID == e.id
                  ? selectedMarkerIcon[e.type.name]!
                  : markerIcon[e.type.name]!,
              position: LatLng(e.location.latitude, e.location.longitude)))),
          onCameraMove: (CameraPosition position) =>
              context.read<GoogleMapState>().setPosition(position),
          zoomControlsEnabled: false,
          mapToolbarEnabled: false,
          myLocationButtonEnabled: false,
          mapType: MapType.normal,
        );
      },
    );
  }
}
