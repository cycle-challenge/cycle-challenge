import 'dart:async';
import 'dart:ui';

import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/place_marker.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';

class GoogleMapSection extends StatefulWidget {
  final Completer<GoogleMapController> mapCompleter;

  final List<Place> places;

  final Place? selectedPlace;

  final void Function()? onTap;
  final void Function(CameraPosition position)? onCameraMove;
  final void Function()? onCameraMoveStarted;
  final void Function(Place place)? onTapMarker;
  final EdgeInsets? padding;
  final CameraPosition? initialPosition;

  GoogleMapSection(
      {super.key,
      required this.mapCompleter,
      List<Place>? places,
      this.selectedPlace,
      this.onTap,
      this.onCameraMove,
      this.onTapMarker,
      this.onCameraMoveStarted,
      this.padding,
      this.initialPosition})
      : places = places ?? [];

  @override
  State<GoogleMapSection> createState() => _GoogleMapSectionState();
}

class _GoogleMapSectionState extends State<GoogleMapSection> {
  Set<Marker> prevMarkers = {};

  Brightness? _prevBrightness;

  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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

  void _on(ThemeMode themeMode) async {
    if (_mapController == null) return;

    late Brightness brightness = MediaQuery.of(context).platformBrightness;

    switch (themeMode) {
      case ThemeMode.light:
        brightness = Brightness.light;
      case ThemeMode.dark:
        brightness = Brightness.dark;
      case ThemeMode.system:
        MediaQuery.of(context).platformBrightness;
    }

    if (brightness == _prevBrightness) return;

    final style = await rootBundle.loadString(
        'assets/map/${brightness == Brightness.light ? 'map_style.json' : 'map_style_dark.json'}');

    await _mapController?.setMapStyle(style);
    _prevBrightness = brightness;
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MainViewModel>();
    final state = viewModel.state;

    _on(state.themeMode);

    return CustomGoogleMapMarkerBuilder(
        customMarkers: _buildMarkerData(),
        builder: (context, markers) {
          if (markers != null) prevMarkers = markers;

          return GoogleMap(
            initialCameraPosition: widget.initialPosition ??
                const CameraPosition(
                    target: LatLng(36.6272, 127.4987), zoom: 13),
            markers: markers ?? prevMarkers,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            onMapCreated: (controller) {
              widget.mapCompleter.complete(controller);
              _mapController = controller;
            },
            onCameraMoveStarted: widget.onCameraMoveStarted,
            onTap: (_) => widget.onTap,
            onCameraMove: widget.onCameraMove,
            padding: widget.padding ?? EdgeInsets.zero,
          );
        });
  }
}
