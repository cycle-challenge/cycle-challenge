import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_list_item.dart';

import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

class PlaceListView extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  final List<Place> places;

  PlaceListView({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();

    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      viewModel.onEvent(MainEvent.setCanViewScrollUp(canScrollUp));
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!state.isExpanded)
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 24, bottom: 12),
              width: 25,
              height: 4,
              decoration: BoxDecoration(
                color: colorScheme.outline,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        if (state.isExpanded) const SizedBox(height: 12),
        Expanded(
          child: ListView.separated(
            controller: _controller,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              final isBookmarked =
                  bookmarkViewModel.state.placeIdSet.contains(places[index].id);

              return GestureDetector(
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
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 32),
            itemCount: places.length,
          ),
        ),
      ],
    );
  }
}
