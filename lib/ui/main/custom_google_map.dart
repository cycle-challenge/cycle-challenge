import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';

import '../../data/models/place_model.dart';
import '../../data/models/place_type.dart';
import '../../states/bottom_sheet_state.dart';
import '../../states/google_map_state.dart';
import '../../states/place_view_model.dart';
import '../../utils/json.dart';
import '../../utils/marker.dart';

class CustomGoogleMap extends StatelessWidget {
  Future<Map<String, Map<String, BitmapDescriptor>>> _loadMarkers() async {
    final Map<String, BitmapDescriptor> markerIcon = {},
        selectedMarkerIcon = {};

    for (PlaceType type in placeTypes) {
      markerIcon[type.value] = await loadSvg(
          "assets/markers/${type.value}.svg", const Size(24.0, 24.0));
      selectedMarkerIcon[type.value] = await loadSvg(
          "assets/markers/select/${type.value}.svg", const Size(24.0, 36.0));
    }

    return {"markerIcon": markerIcon, "selectedMarkerIcon": selectedMarkerIcon};
  }

  @override
  Widget build(BuildContext context) {
    List<PlaceModel> places = context.watch<PlaceViewModel>().places;

    final Brightness brightness = MediaQuery.platformBrightnessOf(context);
    bool isDarkMode = brightness == Brightness.dark;

    return FutureBuilder(
      future: _loadMarkers(),
      builder: (BuildContext context,
          AsyncSnapshot<Map<String, Map<String, BitmapDescriptor>>> snapshot) {
        if (snapshot.hasData == false || snapshot.data == null) return const CircularProgressIndicator();
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
            context.read<PlaceViewModel>().search(36.6272, 127.4987);

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
            context.read<PlaceViewModel>().unSelectPlace();
          },
          markers: Set.of(places.map((e) => Marker(
              markerId: MarkerId(e.id.toString()),
              onTap: () {
                pushNavigate(context);
                context.read<PlaceViewModel>().selectPlace(e.id);
                context.read<BottomSheetState>().setIsSheetShown(true);
                context.read<NavigationState>().setSelectedIndex(0);
              },
              draggable: true,
              icon: context.read<PlaceViewModel>().selectedPlaceID == e.id
                  ? selectedMarkerIcon[e.type]!
                  : markerIcon[e.type]!,
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
