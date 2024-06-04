import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';

class PlaceReviewSummarySection extends StatelessWidget {
  final List<PlaceReview> reviews;

  const PlaceReviewSummarySection({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final int reviewCount = min(3, reviews.length);

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ListTile(
              contentPadding: EdgeInsets.zero, title: Text('관광지 리뷰')),
          for (int index = 0; index < reviewCount; index++) ...[
            PlaceReviewListItem(review: reviews[index]),
            if (index < (reviewCount - 1)) const Divider()
          ],
          const SizedBox(height: 16),
          SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                  onPressed: () => {DefaultTabController.of(context).index = 2},
                  child: const Text('더보기')))
        ]));
  }
}
