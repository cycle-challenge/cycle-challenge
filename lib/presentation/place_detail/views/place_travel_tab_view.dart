import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_preview_item.dart';

class PlaceTravelTabView extends StatelessWidget {
  final List<Travel> travels;

  const PlaceTravelTabView({super.key, required this.travels});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return GridView.builder(
        itemCount: travels.length,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
            12, 24, 12, MediaQuery.of(context).padding.bottom + 24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.5),
        itemBuilder: (_, index) =>
            PlaceTravelPreviewItem(travel: travels[index]));
  }
}
