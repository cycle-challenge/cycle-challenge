import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

List<MarkerData> buildMarker(BuildContext context,
    {required Iterable<Place> places,
    required Place? selectedPlace,
    required void Function(Place place) onTap}) {
  final textTheme = Theme.of(context).textTheme;
  final colorScheme = Theme.of(context).colorScheme;

  return places.map((place) {
    final bool isSelected = selectedPlace == place;

    return MarkerData(
        marker: Marker(
            zIndex: isSelected ? 2 : 1,
            markerId: MarkerId('${place.id}'),
            anchor: const Offset(0.5, 0),
            onTap: () => onTap(place),
            position: LatLng(place.latitude, place.longitude)),
        child: Column(children: [
          Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9999),
                  border: isSelected
                      ? Border.all(color: colorScheme.onSurface, width: 2)
                      : null,
                  color: isSelected ? Colors.red : place.type.backgroundColor),
              child: Icon(place.type.iconData, size: 14)),
          Container(
              height: 21,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              margin: const EdgeInsets.only(top: 3),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: colorScheme.surface),
              child: Text(place.name, style: textTheme.labelSmall))
        ]));
  }).toList();
}
