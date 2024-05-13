import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary_view.dart';
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
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
            pinned: true,
            expandedHeight: 360.0,
            flexibleSpace: FlexibleSpaceBar(
                expandedTitleScale: 1.2,
                title: Text(widget.place.name,
                    style: textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.w600)),
                centerTitle: false,
                background: Stack(
                  children: [
                    InfiniteCarousel.builder(
                        physics: const PageViewTypeScrollPhysics(),
                        itemCount: max(1, widget.place.images.length),
                        itemExtent: MediaQuery.of(context).size.width,
                        onIndexChanged: (int index) => viewModel
                            .onEvent(PlaceDetailEvent.changeImageIndex(index)),
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
                  ],
                ))),
        SliverToBoxAdapter(
            child: Column(
              children: [
                PlaceSummaryView(place: widget.place),
                Container(height: 500)
              ],
            ))
      ]),
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          ChangeNotifierProvider<PlaceDetailViewModel>.value(
                              value: viewModel,
                              child: PlaceReviewScreen(place: widget.place))));
                },
                icon: const Icon(Icons.comment),
                label: Text(state.reviews.length.toString()))
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.place.name),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: "메인"),
              Tab(text: "사진"),
              Tab(text: "리뷰"),
              Tab(text: "여행")
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PlaceSummaryView(
            place: widget.place,
          ),
          PlaceImageView(place: widget.place),
          Container(),
          const TravelListView(travels: [])
        ],
      ),
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
                onPressed: () {}, icon: Icon(Icons.comment), label: Text('0'))
          ],
        ),
      ),
    );
  }
}
