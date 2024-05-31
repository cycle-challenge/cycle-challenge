import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_sort_option.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_sort_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

class PlaceListView extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  final List<Place> places;

  PlaceListView({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<MapViewModel>();
    final state = viewModel.filterState;

    final mainViewModel = context.watch<MainViewModel>();
    final mainState = mainViewModel.state;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();

    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      mainViewModel.onEvent(MainEvent.setCanViewScrollUp(canScrollUp));
    });

    return ListView.separated(
        controller: _controller,
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        itemCount: places.length,
        itemBuilder: (context, index) {
          final isBookmarked =
              bookmarkViewModel.state.placeIdSet.contains(places[index].id);

          final item = GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => PlaceDetailPage(place: places[index]))),
              child: PlaceListItem(
                  place: places[index],
                  trailing: IconButton(
                      onPressed: isBookmarked
                          ? () => bookmarkViewModel.onEvent(
                              BookmarkEvent.deletePlace(places[index]))
                          : () => bookmarkViewModel.onEvent(
                              BookmarkEvent.addPlace(places[index])),
                      icon: Icon(isBookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_outline))));
          if (index == 0) {
            return Column(children: <Widget>[
              Stack(
                  alignment: Alignment.center,
                  children: [
                Container(
                    height: 72,
                    alignment: Alignment.center,
                    child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder: (child, animation) =>
                            FadeTransition(
                                opacity: animation, child: child),
                        child: !mainState.isExpanded
                            ? Container(
                                width: 25,
                                height: 4,
                                decoration: BoxDecoration(
                                    color: colorScheme.outline,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8))))
                            : null)),
                Positioned(
                    right: 12,
                    child: TextButton(
                        onPressed: () => showPlaceSortSheet(context),
                        child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                  state.placeSortOption.when(
                                      nearest: () => '거리 가까운 순',
                                      highestRated: () => '평점 높은 순',
                                      mostReviewed: () => '리뷰 많은 순'),
                                  style: textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w600)),
                              const Icon(Icons.arrow_drop_down)
                            ]))),
              ]),
              item,
            ]);
          } else {
            return item;
          }
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 32));
  }
}
