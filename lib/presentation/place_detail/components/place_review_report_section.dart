import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceReviewReportSection extends StatefulWidget {
  final List<double> ratings;

  const PlaceReviewReportSection({super.key, required this.ratings});

  @override
  State<PlaceReviewReportSection> createState() =>
      _PlaceReviewReportSectionState();
}

class _PlaceReviewReportSectionState extends State<PlaceReviewReportSection> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final int reviewCounts = widget.ratings.reduce((a, b) => a + b).toInt();

    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: colorScheme.surface,
      child: Row(children: [
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('2.0',
              style: textTheme.headlineLarge
                  ?.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          RatingBarIndicator(
              rating: 2,
              itemSize: 18,
              itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )),
          const SizedBox(height: 8),
          const Text('리뷰 3개')
        ]),
        const SizedBox(width: 10),
        const VerticalDivider(),
        Expanded(
            child: Column(children: [
          for (int score = 5; score >= 1; score--) ...[
            Builder(builder: (context) {
              final double rating = widget.ratings[score - 1] / reviewCounts;

              return Row(children: [
                SizedBox(
                    width: 36,
                    child: Center(
                        child: Text('$score점', style: textTheme.bodyMedium))),
                Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                            color: Colors.amber, minHeight: 8, value: rating))),
                SizedBox(
                    width: 36,
                    child: Center(
                        child: Text('${widget.ratings[score - 1].toInt()}개',
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
