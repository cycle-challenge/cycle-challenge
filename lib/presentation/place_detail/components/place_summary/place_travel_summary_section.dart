import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_preview_item.dart';

class PlaceTravelSummarySection extends StatelessWidget {
  final List<Travel> travels;

  const PlaceTravelSummarySection({super.key, required this.travels});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 24),
            title: const Text('관련 여행'),
            trailing: TextButton(
                onPressed: () =>
                    {DefaultTabController.of(context).index = 3},
                child: const Text('더보기'))),
        SizedBox(
            height: 320,
            child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                itemCount: travels.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) =>
                    PlaceTravelPreviewItem(travel: travels[index])))
      ]),
    ]);
  }
}
