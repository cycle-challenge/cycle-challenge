import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_section.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_view_model.dart';

class GoogleMapPage extends StatelessWidget {
  final Completer<GoogleMapController> mapCompleter;

  final List<Place>? places;

  final Place? selectedPlace;

  final void Function()? onTap;
  final void Function(CameraPosition position)? onCameraMove;
  final void Function()? onCameraMoveStarted;
  final void Function(Place place)? onTapMarker;
  final EdgeInsets? padding;
  final CameraPosition? initialPosition;

  const GoogleMapPage(
      {super.key,
      required this.mapCompleter,
      this.places,
      this.selectedPlace,
      this.onTap,
      this.onCameraMove,
      this.onCameraMoveStarted,
      this.onTapMarker,
      this.padding,
      this.initialPosition});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GoogleMapViewModel>(
        create: (context) => GoogleMapViewModel(),
        child: GoogleMapSection(
            mapCompleter: mapCompleter,
            places: places,
            selectedPlace: selectedPlace,
            onTap: onTap,
            onCameraMove: onCameraMove,
            onCameraMoveStarted: onCameraMoveStarted,
            onTapMarker: onTapMarker,
            padding: padding,
            initialPosition: initialPosition));
  }
}
