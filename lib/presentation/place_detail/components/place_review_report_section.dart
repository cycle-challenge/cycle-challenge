import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';

class PlaceReviewReportSection extends StatefulWidget {
  final List<PlaceReview> reviews;

  const PlaceReviewReportSection({super.key, required this.reviews});

  @override
  State<PlaceReviewReportSection> createState() =>
      _PlaceReviewReportSectionState();
}

class _PlaceReviewReportSectionState extends State<PlaceReviewReportSection> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final int reviewCounts = widget.reviews.length;
    final List<int> ratings = List.generate(6,
        (index) => widget.reviews.where((elm) => elm.rating == index).length);

    final double ratingAvg = widget.reviews.length > 0 ?
        widget.reviews.map((e) => e.rating).reduce((a, b) => a + b) /
            reviewCounts : 0.0;

    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: colorScheme.surface,
      child: Row(children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(ratingAvg.toStringAsFixed(2),
              style: textTheme.headlineLarge
                  ?.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          RatingBarIndicator(
              rating: ratingAvg,
              itemSize: 18,
              itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )),
          const SizedBox(height: 8),
          Text('리뷰 $reviewCounts개')
        ]),
        const SizedBox(width: 10),
        const VerticalDivider(),
        Expanded(
            child: Column(children: [
          for (int score = 5; score >= 1; score--) ...[
            Builder(builder: (context) {
              final double rating = ratings[score] / reviewCounts;

              return Row(children: [
                SizedBox(
                    width: 36,
                    child: Center(
                        child: Text('$score점', style: textTheme.bodyMedium))),
                Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                            color: Colors.amber, minHeight: 8, value: 0.0 <= rating && rating <= 1.0 ? rating : 0.0))),
                SizedBox(
                    width: 36,
                    child: Center(
                        child: Text('${ratings[score].toInt()}개',
                            style: textTheme.bodyMedium
                                ?.copyWith(color: colorScheme.outline))))
              ]);
            }),
            const SizedBox(height: 3)
          ]
        ]))
      ]),
    );
  }
}
