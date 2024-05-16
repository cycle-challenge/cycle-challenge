import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:timeago/timeago.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';

class PlaceReviewListItem extends StatelessWidget {
  final PlaceReview review;

  const PlaceReviewListItem({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(children: [
          ListTile(
              leading: const CircleAvatar(),
              title: Text(review.nickname),
              contentPadding: EdgeInsets.zero,
              titleTextStyle: textTheme.titleMedium,
              subtitle: Row(children: [
                RatingBarIndicator(
                    rating: review.rating,
                    itemSize: 18,
                    itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        )),
                Text(
                    ' • ${format(review.createdAt, locale: 'ko', // for test.
                        allowFromNow: true)}',
                    style: textTheme.bodyMedium
                        ?.copyWith(color: colorScheme.outline))
              ])),
          if (review.comment != null)
            Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(review.comment ?? ''))
        ]));
  }
}
