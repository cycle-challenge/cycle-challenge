import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';

class PlaceListItem extends StatelessWidget {

  final EdgeInsets? contentPadding;
  final Place place;
  final IconButton trailing;

  const PlaceListItem({super.key, required this.place, required this.trailing, this.contentPadding});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final distance = place.distance.toStringAsFixed(1) ?? "0.0";
    final type = place.type.label;

    return Column(children: [
      ListTile(
          title: Row(children: [
            Text(place.name,
                style: textTheme.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w600)),
            Text(' $type',
                style:
                    textTheme.bodyMedium?.copyWith(color: colorScheme.outline))
          ]),
          contentPadding: contentPadding,
          subtitle: Row(children: [
            const Icon(Icons.star, color: Colors.amber, size: 18),
            Text(place.reviewAvg.toStringAsFixed(2),
                style: textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w600)),
            Text(' (${place.reviewCount})', style: textTheme.bodyMedium),
            Text(' · $distance km', style: textTheme.labelLarge)
          ]),
          trailing: trailing),
      SizedBox(
          height: 144,
          child: ListView.builder(
              itemCount: max(1, place.images.length),
              primary: false,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: contentPadding?.left ?? 16.0),
              itemBuilder: (context, imageIndex) => Container(
                  width: 144,
                  margin: const EdgeInsets.only(right: 8),
                  child: imageIndex < place.images.length
                      ? Image.network(place.images[imageIndex].small,
                          fit: BoxFit.cover)
                      : Container(color: colorScheme.secondaryContainer))))
    ]);
  }
}
