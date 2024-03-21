import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

import '../../data/models/place_type.dart';

class PlaceTypeFilterWidget extends StatefulWidget {
  const PlaceTypeFilterWidget({super.key});

  @override
  State<StatefulWidget> createState() => _PlaceTypeFilterWidgetState();
}

class _PlaceTypeFilterWidgetState extends State<PlaceTypeFilterWidget> {
  @override
  Widget build(BuildContext context) {
    Map<String, bool> areFiltered = context.watch<PlaceViewModel>().areFiltered;

    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 15.0),
      child: ListView.separated(
          shrinkWrap: true,
          itemCount: placeTypes.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 8.0),
          itemBuilder: (context, index) {
            PlaceType placeType = placeTypes[index];
            bool isSelected = areFiltered[placeType.value]!;

            return GestureDetector(
              onTap: () {
                context.read<PlaceViewModel>().filterType(placeType.value);
              },
              child: Container(
                width: 73,
                margin: index == 0 ? const EdgeInsets.only(left: 30.0) : null,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondaryContainer,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(placeType.iconData,
                        size: 16,
                        color: isSelected
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.onSurface),
                    Text(
                      placeType.label,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: isSelected
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.onSurface),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
