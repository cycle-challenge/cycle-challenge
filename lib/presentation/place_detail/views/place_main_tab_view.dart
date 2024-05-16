import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_image_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_review_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_travel_summary_section.dart';

class PlaceMainTabView extends StatelessWidget {
  final List<PlaceReview> reviews;
  final List<double> ratings;
  final List<Travel> travels;
  final Place place;

  const PlaceMainTabView(
      {super.key,
      required this.reviews,
      required this.ratings,
      required this.place,
      required this.travels});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(children: [
        PlaceImageSummarySection(place: place),
        Container(height: 8, color: colorScheme.secondaryContainer),
        PlaceReviewSummarySection(reviews: reviews, ratings: ratings),
        Container(height: 8, color: colorScheme.secondaryContainer),
        PlaceTravelSummarySection(travels: travels),
        Container(height: 20, color: colorScheme.surface)
      ]),
    );
  }
}
