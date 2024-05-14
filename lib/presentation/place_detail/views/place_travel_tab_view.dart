import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_list_item.dart';

class PlaceTravelTabView extends StatelessWidget {
  final List<Travel> travels;

  const PlaceTravelTabView({super.key, required this.travels});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
        color: colorScheme.surface,
        child: ListView.builder(
            itemCount: travels.length,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            itemBuilder: (_, index) =>
                PlaceTravelListItem(travel: travels[index])));
  }
}
