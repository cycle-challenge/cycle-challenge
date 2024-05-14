import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yeohaeng_ttukttak/utils/function.dart';

class PlaceReviewReportSection extends StatefulWidget {
  final List<double> ratings;

  const PlaceReviewReportSection({super.key, required this.ratings});

  @override
  State<PlaceReviewReportSection> createState() =>
      _PlaceReviewReportSectionState();
}

class _PlaceReviewReportSectionState extends State<PlaceReviewReportSection> {
  Widget getTitles(double value, TitleMeta meta) {
    final textTheme = Theme.of(context).textTheme;

    return SideTitleWidget(
        angle: 4.7,
        axisSide: meta.axisSide,
        space: 4,
        child: Center(
            child: Text('${value.toInt().toString()}점',
                style: textTheme.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w600))));
  }

  Widget getTopTitles(double value, TitleMeta meta) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SideTitleWidget(
        angle: 4.7,
        axisSide: meta.axisSide,
        space: 4,
        child: Center(
            child: Text(widget.ratings[(5 - value).toInt()].toInt().toString(),
                style: textTheme.bodyMedium
                    ?.copyWith(color: colorScheme.outline))));
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              getTitlesWidget: getTopTitles),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  List<BarChartGroupData> createBarChartGroupData(List<double> ratings) {
    return ratings
        .mapWithIndex((e, index) => BarChartGroupData(x: 5 - index, barRods: [
              BarChartRodData(
                  toY: e,
                  color: Colors.amber,
                  backDrawRodData: BackgroundBarChartRodData(
                      show: true, toY: 10, color: Colors.grey.shade800))
            ]));
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

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
            child: RotatedBox(
                quarterTurns: -3,
                child: BarChart(BarChartData(
                    titlesData: titlesData,
                    groupsSpace: 20,
                    alignment: BarChartAlignment.center,
                    gridData: const FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                    maxY: 10,
                    barGroups: createBarChartGroupData(widget.ratings))))),
      ]),
    );
  }
}
