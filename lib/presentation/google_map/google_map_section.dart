import 'dart:async';

import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/place_marker.dart';

class GoogleMapSection extends StatefulWidget {
  final Completer<GoogleMapController> mapCompleter;

  final List<Place> places;

  final Place? selectedPlace;

  final void Function()? onTap;
  final void Function(CameraPosition position)? onCameraMove;
  final void Function()? onCameraMoveStarted;
  final void Function(Place place)? onTapMarker;
  final EdgeInsets? padding;

  GoogleMapSection(
      {super.key,
      required this.mapCompleter,
      List<Place>? places,
      this.selectedPlace,
      this.onTap,
      this.onCameraMove,
      this.onTapMarker,
      this.onCameraMoveStarted,
      this.padding})
      : places = places ?? [];

  @override
  State<GoogleMapSection> createState() => _GoogleMapSectionState();
}

class _GoogleMapSectionState extends State<GoogleMapSection> {
  Set<Marker> prevMarkers = {};

  StreamSubscription<GoogleMapUiEvent>? _subscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<GoogleMapViewModel>();

      _subscription = viewModel.stream.listen((event) async {
        final controller = await widget.mapCompleter.future;

        event.when(changeMapStyle: (style) {
          controller.setMapStyle(style);
        });
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();

    widget.mapCompleter.future.then((controller) => controller.dispose());

    super.dispose();
  }

  List<MarkerData> _buildMarkerData() {
    return widget.places.map((place) {
      final isSelected = widget.selectedPlace == place;

      return MarkerData(
          marker: Marker(
              zIndex: isSelected ? 2 : 1,
              markerId: MarkerId('${place.id}'),
              anchor: const Offset(0.5, 0),
              onTap: () => widget.onTapMarker?.call(place),
              position: LatLng(place.latitude, place.longitude)),
          child: PlaceMarker(place: place, isSelected: isSelected));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<GoogleMapViewModel>();
    final state = viewModel.state;
    final brightness = MediaQuery.platformBrightnessOf(context);

    viewModel.onEvent(GoogleMapEvent.changeBrightness(brightness));

    return CustomGoogleMapMarkerBuilder(
        customMarkers: _buildMarkerData(),
        builder: (context, markers) {
          if (markers != null) prevMarkers = markers;

          return GoogleMap(
            initialCameraPosition: const CameraPosition(
                target: LatLng(36.6272, 127.4987), zoom: 13),
            markers: markers ?? prevMarkers,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            onMapCreated: (controller) => {
              if (!widget.mapCompleter.isCompleted)
                widget.mapCompleter.complete(controller)
            },
            onCameraMoveStarted: widget.onCameraMoveStarted,
            onTap: (_) => widget.onTap,
            onCameraMove: widget.onCameraMove,
            padding: widget.padding ?? EdgeInsets.zero,
          );
        });
  }
}
