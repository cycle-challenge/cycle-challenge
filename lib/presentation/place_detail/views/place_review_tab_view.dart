import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_create_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';

class PlaceReviewTabView extends StatelessWidget {
  final List<PlaceReview> reviews;
  final Place place;

  const PlaceReviewTabView(
      {super.key, required this.place, required this.reviews});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    final colorTheme = Theme.of(context).colorTheme;

    return ListView(
        padding: EdgeInsets.fromLTRB(
            0, 36, 0, MediaQuery.of(context).padding.bottom),
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.name,
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.w600)),
                  const Text('당신의 소중한 경험을 남겨주세요.'),
                  const SizedBox(height: 12),
                  RatingBar.builder(
                      initialRating: 3,
                      minRating: 1.0,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      glow: false,
                      itemPadding:
                          const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      onRatingUpdate: (rating) =>
                          showPlaceReviewCreateSheet(context,
                              place: place, initialRating: rating)),
                  const SizedBox(height: 16)
                ]),
          ),
          const SizedBox(height: 24),
          const Divider(thickness: 8),
          ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 24),
              title: RichText(
                  text: TextSpan(
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                      children: [
                    const TextSpan(text: '리뷰 '),
                    TextSpan(
                        text: '${reviews.length}',
                        style: TextStyle(color: colorTheme.foregroundLight))
                  ]))),
          const Divider(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(children: [
                for (int index = 0; index < reviews.length; index++) ...[
                  PlaceReviewListItem(review: reviews[index]),
                  if (index < (reviews.length - 1)) const Divider()
                ]
              ])),
        ]);
  }
}
