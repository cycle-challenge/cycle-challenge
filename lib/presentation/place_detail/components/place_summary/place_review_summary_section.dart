import 'dart:math';

import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';

class PlaceReviewSummarySection extends StatelessWidget {
  final List<PlaceReview> reviews;
  final List<double> ratings;

  const PlaceReviewSummarySection(
      {super.key, required this.reviews, required this.ratings});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final int reviewCount = min(2, reviews.length);

    return Container(
        color: colorScheme.surface,
        padding: const EdgeInsets.only(top: 30, bottom: 15),
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('방문자 리뷰',
                        style: textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    PlaceReviewReportSection(ratings: ratings),
                    for (int index = 0; index < reviewCount; index++) ...[
                      PlaceReviewListItem(review: reviews[index]),
                      if (index < (reviewCount - 1)) const Divider()
                    ]
                  ])),
          Align(
              alignment: Alignment.centerRight,
              child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                      onPressed: () =>
                          {DefaultTabController.of(context).index = 2},
                      icon: const Icon(Icons.chevron_left),
                      label: const Text('리뷰 더보기'))))
        ]));
  }
}
