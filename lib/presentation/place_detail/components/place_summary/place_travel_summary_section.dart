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

    return Container(
        color: colorScheme.surface,
        padding: const EdgeInsets.only(top: 30, bottom: 15),
        child: Column(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('방문한 여행',
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 16),
                SizedBox(
                    height: 240,
                    child: ListView.separated(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        itemCount: travels.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: 8),
                        itemBuilder: (context, index) =>
                            PlaceTravelPreviewItem(travel: travels[index])))
              ]),
          Align(
              alignment: Alignment.centerRight,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                      onPressed: () => { DefaultTabController.of(context).index = 3 },
                      icon: const Icon(Icons.chevron_left),
                      label: const Text('여행 더보기'))))
        ]));
  }
}
