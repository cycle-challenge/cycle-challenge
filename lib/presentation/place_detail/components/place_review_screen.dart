import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceReviewScreen extends StatefulWidget {
  final Place place;

  const PlaceReviewScreen({super.key, required this.place});

  @override
  State<PlaceReviewScreen> createState() => _PlaceReviewScreenState();
}

class _PlaceReviewScreenState extends State<PlaceReviewScreen> {
  List<double> ratings = [0, 1, 2, 6, 5];

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
            PlaceReviewReportSection(ratings: ratings),
            Expanded(
                child: ListView.separated(
                    primary: false,
                    itemCount: reviews.length,
                    itemBuilder: (context, index) =>
                        PlaceReviewListItem(review: state.reviews[index]),
                    separatorBuilder: (_, __) => const Divider()))
          ]),
        ));
  }
}
