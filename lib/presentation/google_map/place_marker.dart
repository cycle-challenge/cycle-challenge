import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

class PlaceMarker extends StatelessWidget {
  final Place place;

  final bool isSelected;

  const PlaceMarker({super.key, required this.place, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(children: [
      Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9999),
              border: isSelected
                  ? Border.all(color: colorScheme.onSurface, width: 2)
                  : null,
              color: isSelected ? Colors.red : place.type.backgroundColor),
          child: Icon(place.type.iconData, size: 14, color: Colors.white)),
      Container(
          height: 21,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          margin: const EdgeInsets.only(top: 3),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: colorScheme.surface),
          child: Text(place.name, style: const TextStyle(fontSize: 9)))
    ]);
  }
}
