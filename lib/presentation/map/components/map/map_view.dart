import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_filter_data_state.dart';

class MapView extends StatefulWidget {
  const MapView({super.key, required this.onMapCreated});

  final void Function(GoogleMapController mapController) onMapCreated;

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {

  Set<Marker> _buildMarkers() {
    final viewModel = context.watch<MapViewModel>();
    final filterState = viewModel.filterState;
    final state = viewModel.state;

    return Set.of(
        [...filterState.filteredPlaces, filterState.selectedPlace].map((e) {
      if (e == null) return null;
      return Marker(
          markerId: MarkerId(e.id.toString()),
          onTap: () {
            viewModel.onEvent(MapEvent.selectPlace(e));
          },
          draggable: true,
          anchor: const Offset(0.5, 0.5),
          icon: filterState.selectedPlace?.id == e.id
              ? state.selectedMarkerIcon[e.type.name] ??
                  BitmapDescriptor.defaultMarker
              : state.markerIcon[e.type.name] ?? BitmapDescriptor.defaultMarker,
          position: LatLng(e.latitude, e.longitude));
    }).whereType<Marker>());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();

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
      },
      markers: _buildMarkers(),
      onCameraMove: (CameraPosition position) =>
          viewModel.onEvent(MapEvent.changePosition(position)),
      zoomControlsEnabled: false,
      mapToolbarEnabled: false,
      myLocationButtonEnabled: false,
      mapType: MapType.normal,
    );
  }
}
