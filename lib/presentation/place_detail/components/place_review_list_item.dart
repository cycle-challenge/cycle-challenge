import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(children: [
        ListTile(
            leading: const CircleAvatar(),
            title: Text(review.nickname),
            contentPadding: EdgeInsets.zero,
            subtitle: Row(children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 16,
              ),
              Text(
                  ' ${(review.rating / 2).toString()}',
                  style: textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600)),
              Text(
                  ' / 5.0 • ${format(review.createdAt, locale: 'ko', // for test.
                      allowFromNow: true)}',
                  style: textTheme.bodyMedium)
            ])),
        if (review.comment != null)
          SizedBox(
              width: double.maxFinite,
              child: Text(review.comment.toString()))
      ]),
    );
  }
  
  
}