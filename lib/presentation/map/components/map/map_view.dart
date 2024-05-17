import 'dart:ui' as ui;

import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/marker.dart';

class MapView extends StatefulWidget {
  const MapView({super.key, required this.onMapCreated});

  final void Function(GoogleMapController mapController) onMapCreated;

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  Set<Marker> _prevMarkers = {};

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final filterState = viewModel.filterState;

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final data = [...filterState.filteredPlaces, filterState.selectedPlace]
        .whereType<Place>();

    return CustomGoogleMapMarkerBuilder(
        customMarkers: buildMarker(context,
            places: data,
            selectedPlace: filterState.selectedPlace,
            onTap: (place) => viewModel.onEvent(MapEvent.selectPlace(place))),
        builder: (context, markers) {
          if (markers != null) _prevMarkers = markers;

          return GoogleMap(
            initialCameraPosition: const CameraPosition(
                target: LatLng(36.6272, 127.4987), zoom: 13),
            onMapCreated: (controller) => widget.onMapCreated(controller),
            onCameraMoveStarted: () =>
                viewModel.onEvent(const MapEvent.showSearchButton()),
            onTap: (_) => viewModel.onEvent(const MapEvent.selectPlace(null)),
            markers: markers ?? _prevMarkers,
            onCameraMove: (CameraPosition position) {
              viewModel.onEvent(MapEvent.changePosition(position));
            },
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
          );
        });
  }
}
