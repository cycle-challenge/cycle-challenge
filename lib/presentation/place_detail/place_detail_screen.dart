import 'dart:math';

import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_review.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/travel_bookmark_item.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/components/travel_bookmark_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_preview_image_header_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_create_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_image_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_review_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_travel_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_tab_bar_header_delegate.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceDetailScreen extends StatefulWidget {
  final Place place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  List<double> ratings = [0, 1, 2, 6, 5];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;

    final mapViewModel = context.watch<MapViewModel>();
    final detail =
        mapViewModel.dataState.placeDetails[widget.place.googlePlaceId];

    if (detail == null) {
      return const Center(child: CircularProgressIndicator());
    }

    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    bool isBookmarked =
        bookmarkViewModel.state.placeIdSet.contains(widget.place.id);

    final networkImages =
        state.images.map((e) => NetworkImage(e.large)).toList();

    return Scaffold(
      backgroundColor: colorScheme.secondaryContainer,
      body: DefaultTabController(

          length: 4,
          child: NestedScrollView(
              headerSliverBuilder: (_, __) => [
                    SliverAppBar(
                        pinned: true,
                        expandedHeight: 244.0,
                        surfaceTintColor: colorScheme.surface,
                        flexibleSpace: FlexibleSpaceBar(
                            expandedTitleScale: 1.1,
                            title: Text(widget.place.name,
                                style: textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.w600)),
                            centerTitle: false,
                            background: PlacePreviewImageHeaderSection(
                                place: widget.place))),
                    SliverToBoxAdapter(
                        child: PlaceSummarySection(place: widget.place)),
                    SliverPersistentHeader(
                        pinned: true, delegate: PlaceTapBarHeaderDelegate())
                  ],
              physics: const ClampingScrollPhysics(),
              body: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      physics: const ClampingScrollPhysics(),
                      child: Column(children: [
                        const SizedBox(height: 8),
                        PlaceImageSummarySection(place: widget.place),
                        const SizedBox(height: 8),
                        PlaceReviewSummarySection(
                            reviews: state.reviews, ratings: ratings),
                        const SizedBox(height: 8),
                        PlaceTravelSummarySection(travels: state.travels),
                        Container(height: 20, color: colorScheme.surface)
                      ]),
                    ),
                    Container(
                        color: colorScheme.surface,
                        child: GridView.builder(
                            itemCount: state.images.length,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 40),
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 1 / 1),
                            itemBuilder: (_, index) => InkWell(
                                onTap: () => showImageViewerPager(
                                    context,
                                    useSafeArea: true,
                                    MultiImageProvider(networkImages,
                                        initialIndex: index)),
                                child: Image(image: networkImages[index])))),
                    SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  color: colorScheme.surface,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 40),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(widget.place.name,
                                            style: textTheme.titleLarge
                                                ?.copyWith(
                                                    fontWeight:
                                                        FontWeight.w600)),
                                        const Text('에 대한 당신의 경험을 남겨주세요.'),
                                        const SizedBox(height: 12),
                                        RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1.0,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            glow: false,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 4.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                            onRatingUpdate: (rating) =>
                                                showModalBottomSheet(
                                                    enableDrag: false,
                                                    isScrollControlled: true,
                                                    useSafeArea: true,
                                                    context: context,
                                                    builder: (_) =>
                                                        PlaceReviewCreateSheet(
                                                            place: widget.place,
                                                            initialRating:
                                                                rating)))
                                      ])),
                              const SizedBox(height: 1),
                              PlaceReviewReportSection(ratings: ratings),
                              const SizedBox(height: 16),
                              Container(
                                  width: double.maxFinite,
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                  color: colorScheme.surface,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('리뷰',
                                                  style: textTheme.titleMedium
                                                      ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600)),
                                              const SizedBox(width: 4),
                                              Text('${state.reviews.length}',
                                                  style: textTheme.titleMedium
                                                      ?.copyWith(
                                                          color: colorScheme
                                                              .outline,
                                                          fontWeight:
                                                              FontWeight.w600))
                                            ]),
                                        TextButton.icon(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.filter_alt_outlined),
                                            label: const Text('최신순'))
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  color: colorScheme.surface,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 0),
                                  child: Column(children: [
                                    const Divider(),
                                    for (PlaceReview review in state.reviews)
                                      PlaceReviewListItem(review: review)
                                  ]))
                            ])),
                    Container(
                        color: colorScheme.surface,
                        child: ListView.builder(
                            itemCount: state.travels.length,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 40),
                            itemBuilder: (_, index) => PlaceTravelListItem(
                                travel: state.travels[index])))
                  ]))),
      floatingActionButton: FloatingActionButton(
          onPressed: isBookmarked
              ? () => bookmarkViewModel
                  .onEvent(BookmarkEvent.deletePlace(widget.place))
              : () => bookmarkViewModel
                  .onEvent(BookmarkEvent.addPlace(widget.place)),
          elevation: 0,
          backgroundColor: colorScheme.secondaryContainer,
          child: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
              color: colorScheme.onSurface)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: colorScheme.surface,
        child: Row(
          children: [
            IconButton(icon: const Icon(Icons.share), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () => viewModel
                    .onEvent(PlaceDetailEvent.callPhone(detail.phoneNumber))),
            IconButton(
                onPressed: () => showModalBottomSheet(
                    enableDrag: false,
                    isScrollControlled: true,
                    useSafeArea: true,
                    context: context,
                    builder: (_) => PlaceReviewCreateSheet(
                        place: widget.place, initialRating: 3.0)),
                icon: const Icon(Icons.add_comment))
          ],
        ),
      ),
    );
  }
}
