import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import '../../utils/marker.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key, required this.onMapCreated});

  final void Function(GoogleMapController mapController) onMapCreated;

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
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
    final viewModel = context.watch<MapViewModel>();
    final filterState = viewModel.filterState;

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
          onMapCreated: widget.onMapCreated,
          onCameraMoveStarted: () =>
              viewModel.onEvent(const MapEvent.showSearchButton()),
          onTap: (_) {
            viewModel.onEvent(const MapEvent.selectPlace(null));
            viewModel.onEvent(const MapEvent.changeNavigation(0));
          },
          markers: Set.of(filterState.filteredPlaces.map((e) => Marker(
              markerId: MarkerId(e.id.toString()),
              onTap: () {
                viewModel.onEvent(MapEvent.selectPlace(e));
                viewModel.onEvent(const MapEvent.changeNavigation(0));
              },
              draggable: true,
              anchor: const Offset(0.5, 0.5),
              icon: filterState.selectedPlace?.id == e.id
                  ? selectedMarkerIcon[e.type.name]!
                  : markerIcon[e.type.name]!,
              position: LatLng(e.location.latitude, e.location.longitude)))),
          onCameraMove: (CameraPosition position) =>
              viewModel.onEvent(MapEvent.changePosition(position)),
          zoomControlsEnabled: false,
          mapToolbarEnabled: false,
          myLocationButtonEnabled: false,
          mapType: MapType.normal,
        );
      },
    );
  }
}
