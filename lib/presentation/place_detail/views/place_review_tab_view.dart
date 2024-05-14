import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_create_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';

class PlaceReviewTabView extends StatelessWidget {
  final List<PlaceReview> reviews;
  final List<double> ratings;
  final Place place;

  const PlaceReviewTabView(
      {super.key,
      required this.place,
      required this.ratings,
      required this.reviews});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: double.maxFinite,
              color: colorScheme.surface,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(place.name,
                        style: textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    const Text('에 대한 당신의 경험을 남겨주세요.'),
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
                        onRatingUpdate: (rating) => showModalBottomSheet(
                            enableDrag: false,
                            isScrollControlled: true,
                            useSafeArea: true,
                            context: context,
                            builder: (_) => PlaceReviewCreateSheet(
                                place: place, initialRating: rating)))
                  ])),
          const SizedBox(height: 1),
          PlaceReviewReportSection(ratings: ratings),
          const SizedBox(height: 16),
          Container(
              width: double.maxFinite,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              color: colorScheme.surface,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('리뷰',
                              style: textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w600)),
                          const SizedBox(width: 4),
                          Text('${reviews.length}',
                              style: textTheme.titleMedium?.copyWith(
                                  color: colorScheme.outline,
                                  fontWeight: FontWeight.w600))
                        ]),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.filter_alt_outlined),
                        label: const Text('최신순'))
                  ])),
          Container(
              width: double.maxFinite,
              color: colorScheme.surface,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Column(children: [
                const Divider(),
                for (int index = 0; index < reviews.length; index++) ...[
                  PlaceReviewListItem(review: reviews[index]),
                  if (index < (reviews.length - 1)) const Divider()
                ]
              ]))
        ]));
  }
}
