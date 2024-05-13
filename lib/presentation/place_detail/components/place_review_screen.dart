import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceReviewScreen extends StatefulWidget {
  final Place place;

  const PlaceReviewScreen({super.key, required this.place});

  @override
  State<PlaceReviewScreen> createState() => _PlaceReviewScreenState();
}

class _PlaceReviewScreenState extends State<PlaceReviewScreen> {
  Widget getTitles(double value, TitleMeta meta) {
    final textTheme = Theme.of(context).textTheme;

    return SideTitleWidget(
      angle: 4.7,
      axisSide: meta.axisSide,
      space: 4,
      child: Text(value.toInt().toString()),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  BarTouchData get barTouchData => BarTouchData(
      enabled: false,
      touchTooltipData: BarTouchTooltipData(
          rotateAngle: 270,
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (_, __, rod, ___) =>
              BarTooltipItem(rod.toY.round().toString(), const TextStyle())));

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;

    final List<PlaceReview> reviews = state.reviews;

    final appbarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(appbarHeight + 18),
            child: AppBar(
                title: Column(children: [
              const Text('리뷰 보기'),
              Text(widget.place.name, style: textTheme.bodyMedium)
            ]))),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            SizedBox(
              height: 150,
              child: Row(children: [
                const SizedBox(width: 10),
                Column(children: [
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
                  Text('리뷰 3개')
                ]),
                const SizedBox(width: 10),
                const VerticalDivider(),
                Expanded(
                    child: RotatedBox(
                        quarterTurns: -3,
                        child: BarChart(BarChartData(
                            barTouchData: barTouchData,
                            titlesData: titlesData,
                            groupsSpace: 20,
                            alignment: BarChartAlignment.center,
                            gridData: const FlGridData(show: false),
                            borderData: FlBorderData(show: false),
                            maxY: 10,
                            barGroups: [
                              BarChartGroupData(x: 0, barRods: [
                                BarChartRodData(toY: 0, color: Colors.amber)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 1, barRods: [
                                BarChartRodData(toY: 1, color: Colors.amber)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 2, barRods: [
                                BarChartRodData(toY: 2, color: Colors.amber)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 3, barRods: [
                                BarChartRodData(toY: 6, color: Colors.amber)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 4, barRods: [
                                BarChartRodData(toY: 5, color: Colors.amber)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                            ])))),
              ]),
            ),
            Expanded(
                child: ListView.separated(
                    primary: false,
                    itemCount: reviews.length,
                    itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(children: [
                          ListTile(
                              leading: const CircleAvatar(),
                              title: Text(reviews[index].nickname),
                              contentPadding: EdgeInsets.zero,
                              subtitle: Row(children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                Text(
                                    ' ${(reviews[index].rating / 2).toString()}',
                                    style: textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600)),
                                Text(
                                    ' / 5.0 • ${format(reviews[index].createdAt, locale: 'ko', // for test.
                                        allowFromNow: true)}',
                                    style: textTheme.bodyMedium)
                              ])),
                          if (reviews[index].comment != null)
                            SizedBox(
                                width: double.maxFinite,
                                child: Text(reviews[index].comment.toString()))
                        ])),
                    separatorBuilder: (_, __) => const Divider()))
          ]),
        ));
  }
}
