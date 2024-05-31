import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_image_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_main_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_preview_image_header_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_create_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_review_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_tab_bar_header_delegate.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_travel_tab_view.dart';
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

    return Scaffold(
        extendBody: true,
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
                      PlaceMainTabView(
                          reviews: state.reviews,
                          place: widget.place,
                          travels: state.travels),
                      PlaceImageTabView(images: state.images),
                      PlaceReviewTabView(
                          place: widget.place,
                          ratings: ratings,
                          reviews: state.reviews),
                      PlaceTravelTabView(travels: state.travels)
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
            child: Row(children: [
              IconButton(icon: const Icon(Icons.share), onPressed: () {}),
              IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () => viewModel
                      .onEvent(PlaceDetailEvent.callPhone(detail.phoneNumber))),
              IconButton(
                  icon: const Icon(Icons.add_comment),
                  onPressed: () => showPlaceReviewCreateSheet(context, place: widget.place))
            ])));
  }
}
