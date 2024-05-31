import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:timeago/timeago.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';

class PlaceReviewListItem extends StatelessWidget {
  final PlaceReview review;

  const PlaceReviewListItem({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(children: [
      ListTile(
          leading: RandomAvatar(review.nickname, width: 36, height: 36),
          titleTextStyle: textTheme.titleSmall,
          subtitleTextStyle: textTheme.bodySmall,
          title: Text(review.nickname),
          contentPadding: EdgeInsets.zero,
          trailing: RatingBarIndicator(
              rating: review.rating,
              itemSize: 18,
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              )),
          subtitle: Text(
              format(review.createdAt, allowFromNow: true,  locale: 'ko', ),
              style: TextStyle(color: colorScheme.outline))),
      if (review.comment != null)
        Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(review.comment ?? ''))
    ]);
  }
}
