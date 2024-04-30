import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';


import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

class PlaceListView extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  final List<Place> places;

  PlaceListView({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    final state = viewModel.state;

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
                color: Theme.of(context).colorScheme.outline,
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
            itemBuilder: (BuildContext context, int index) {
              String distance =
                  places[index].distance?.toStringAsFixed(1).toString() ??
                      "0.0";
              String type = places[index].type.label;

              bool isBookmarked =
                  bookmarkViewModel.state.placeIdSet.contains(places[index].id);

              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => PlaceDetailPage(place: places[index]))),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints:
                                    const BoxConstraints(maxWidth: 230),
                                child: Text(places[index].name,
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                              ),
                              Text('$distance km · $type',
                                  style: Theme.of(context).textTheme.labelLarge)
                            ],
                          ),
                          IconButton(
                            onPressed: isBookmarked
                                ? () => bookmarkViewModel
                                    .onEvent(BookmarkEvent.deletePlace(places[index]))
                                : () => bookmarkViewModel
                                    .onEvent(BookmarkEvent.addPlace(places[index])),
                            icon: Icon(
                                isBookmarked
                                    ? Icons.bookmark
                                    : Icons.bookmark_outline,
                                size: 20),
                          ),
                        ],
                      ),
                      Container(
                          height: 144,
                          margin: const EdgeInsets.only(top: 10.0),
                          child: ListView.separated(
                            shrinkWrap: true,
                            primary: false,
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 8),
                            itemBuilder: (BuildContext context, int index) {
                              return ClipRRect(
                                child: index < places[index].images.length
                                    ? Image.network(
                                  places[index].images[index].small,
                                        width: 144,
                                        height: 144,
                                        fit: BoxFit.cover,
                                      )
                                    : Container(
                                        width: 144,
                                        height: 144,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondaryContainer,
                                      ),
                              );
                            },
                          )),
                    ],
                  ),
                ),
              );
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
