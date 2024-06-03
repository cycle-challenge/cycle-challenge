import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/google_map/google_map_page.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_image_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_main_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_review_create_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_review_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_summary/place_summary_section.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/components/place_tab_bar_header_delegate.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/views/place_travel_tab_view.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/widget.dart';

class PlaceDetailScreen extends StatefulWidget {
  final Place place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
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

    final colorTheme = Theme.of(context).colorTheme;

    return Scaffold(
        extendBody: true,
        backgroundColor: colorTheme.background,
        body: DefaultTabController(
            length: 4,
            child: NestedScrollView(
                headerSliverBuilder: (_, __) => [
                      SliverAppBar(
                          pinned: true,
                          expandedHeight: 312,
                          surfaceTintColor: colorTheme.background,
                          flexibleSpace:
                              LayoutBuilder(builder: (context, constraints) {
                            final isFolded = constraints.maxHeight <= 144.0;
                            const titleHeight = 64.0;

                            final position = CameraPosition(
                                target: LatLng(widget.place.latitude,
                                    widget.place.longitude),
                                zoom: 14);

                            return FlexibleSpaceBar(
                              title: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 100),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: colorTheme.background,
                                        border: Border(
                                            bottom: BorderSide(
                                                color:
                                                    colorTheme.borderLight))),
                                    key: ValueKey(isFolded),
                                    height: titleHeight,
                                    padding: const EdgeInsets.fromLTRB(
                                        16, 0, 16, 12),
                                    alignment: isFolded
                                        ? Alignment.bottomCenter
                                        : Alignment.bottomLeft,
                                    child: Text(widget.place.name,
                                        style: TextStyle(
                                            color: colorTheme.foreground,
                                            fontWeight: FontWeight.w600)),
                                  )),
                              background: GoogleMapPage(
                                  places:
                                      mapViewModel.filterState.filteredPlaces,
                                  selectedPlace: viewModel.place,
                                  mapCompleter: Completer(),
                                  initialPosition: position,
                                  padding: const EdgeInsets.only(
                                      bottom: titleHeight)),
                              expandedTitleScale: 1.0,
                              titlePadding: EdgeInsets.zero,
                            );
                          })),
                      SliverToBoxAdapter(
                          child: PlaceSummarySection(place: widget.place)),
                      SliverPersistentHeader(
                          pinned: true, delegate: PlaceTapBarHeaderDelegate())
                    ],
                body: Builder(builder: (context) {
                  return FadeTabBarView(children: [
                    PlaceMainTabView(
                        reviews: state.reviews,
                        place: widget.place,
                        travels: state.travels),
                    PlaceImageTabView(images: state.images),
                    PlaceReviewTabView(
                        place: widget.place, reviews: state.reviews),
                    PlaceTravelTabView(travels: state.travels)
                  ]);
                }))),
        floatingActionButton: FloatingActionButton(
            onPressed: isBookmarked
                ? () => bookmarkViewModel
                    .onEvent(BookmarkEvent.deletePlace(widget.place))
                : () => bookmarkViewModel
                    .onEvent(BookmarkEvent.addPlace(widget.place)),
            elevation: 0,
            child: Icon(isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                color: colorScheme.onSurface)),
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        bottomNavigationBar: ClipRRect(
          child: BottomAppBar(
              child: Row(children: [
            IconButton(icon: const Icon(Icons.share), onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () => viewModel
                    .onEvent(PlaceDetailEvent.callPhone(detail.phoneNumber))),
            IconButton(
                icon: const Icon(Icons.add_comment),
                onPressed: () =>
                    showPlaceReviewCreateSheet(context, place: widget.place))
          ])).blur(),
        ));
  }
}
