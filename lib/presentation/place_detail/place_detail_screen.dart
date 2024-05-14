import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/image.dart' as ImageModel;
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_image_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_report_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_travel_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/tab_bar_header_delegate.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_image_view.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/travel_list_view.dart';

class PlaceDetailScreen extends StatefulWidget {
  final Place place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  List<double> ratings = [0, 1, 2, 6, 5];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
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

    return Scaffold(
      backgroundColor: colorScheme.secondaryContainer,
      body: DefaultTabController(
          length: 4,
          child: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: <Widget>[
                SliverAppBar(
                    pinned: true,
                    expandedHeight: 240.0,
                    surfaceTintColor: colorScheme.surface,
                    flexibleSpace: FlexibleSpaceBar(
                        expandedTitleScale: 1.1,
                        title: Text(widget.place.name,
                            style: textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.w600)),
                        centerTitle: false,
                        background: Stack(children: [
                          InfiniteCarousel.builder(
                              physics: const PageViewTypeScrollPhysics(),
                              itemCount: max(1, widget.place.images.length),
                              itemExtent: MediaQuery.of(context).size.width,
                              onIndexChanged: (int index) => viewModel.onEvent(
                                  PlaceDetailEvent.changeImageIndex(index)),
                              center: false,
                              itemBuilder: (context, index, _) {
                                final defaultImage = Image.asset(
                                    "assets/image/default.png",
                                    fit: BoxFit.cover);

                                return ShaderMask(
                                    shaderCallback: (bounds) {
                                      return LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.1),
                                            Colors.black.withOpacity(0.2),
                                            Colors.black.withOpacity(0.5)
                                          ]).createShader(bounds);
                                    },
                                    blendMode: BlendMode.srcOver,
                                    child: index < widget.place.images.length
                                        ? Image.network(
                                            widget.place.images[index].large,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, exception, trace) =>
                                                    defaultImage)
                                        : defaultImage);
                              }),
                          Positioned(
                            right: 16,
                            bottom: 24,
                            child: AnimatedSmoothIndicator(
                                activeIndex: state.imageIndex,
                                count: widget.place.images.length,
                                effect: ExpandingDotsEffect(
                                    dotWidth: 12,
                                    dotHeight: 12,
                                    spacing: 4,
                                    dotColor: colorScheme.primary,
                                    activeDotColor: colorScheme.primary)),
                          )
                        ]))),
                SliverToBoxAdapter(
                    child: PlaceSummarySection(place: widget.place)),
                SliverPersistentHeader(
                    pinned: true, delegate: TapBarHeaderDelegate()),
                const SliverToBoxAdapter(child: SizedBox(height: 8)),
                SliverToBoxAdapter(
                    child: Column(children: [
                  PlaceImageSummarySection(place: widget.place),
                  const SizedBox(height: 8),
                  PlaceReviewSummarySection(
                      reviews: state.reviews, ratings: ratings),
                  const SizedBox(height: 8),
                  PlaceTravelSummarySection(travels: state.travels),
                  Container(height: 20, color: colorScheme.surface)
                ]))
              ])),
      floatingActionButton: FloatingActionButton(
        onPressed: isBookmarked
            ? () => bookmarkViewModel
                .onEvent(BookmarkEvent.deletePlace(widget.place))
            : () =>
                bookmarkViewModel.onEvent(BookmarkEvent.addPlace(widget.place)),
        elevation: 0,
        backgroundColor: colorScheme.secondaryContainer,
        child: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
            color: colorScheme.onSurface),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: colorScheme.surface,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () => viewModel
                    .onEvent(PlaceDetailEvent.callPhone(detail.phoneNumber))),
            TextButton.icon(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ChangeNotifierProvider<PlaceDetailViewModel>.value(
                            value: viewModel,
                            child: PlaceReviewScreen(place: widget.place)))),
                icon: const Icon(Icons.comment),
                label: Text(state.reviews.length.toString()))
          ],
        ),
      ),
    );
  }
}
