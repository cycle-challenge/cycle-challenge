import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

import '../../data/models/place_model.dart';
import '../../data/models/place_type.dart';

class PlaceListViewSheet extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  double prevScrollOffset = -1.0;

  @override
  Widget build(BuildContext context) {
    List<PlaceModel> places = context.watch<PlaceViewModel>().places;
    bool isExpanded = context.read<BottomSheetState>().isExpanded;

    _scrollController.addListener(() {
      bool isAnimating = context.read<BottomSheetState>().isAnimating;
      if (isAnimating) return;

      bool isScrollingUp = _scrollController.position.userScrollDirection ==
          ScrollDirection.forward;
      bool canScrollUp = _scrollController.offset > 0;
      bool isExpanded = context.read<BottomSheetState>().isExpanded;

      if (isExpanded &&
          isScrollingUp &&
          !canScrollUp &&
          prevScrollOffset == 0) {
        context.read<BottomSheetState>().reduce();
      }

      if (!isExpanded && !isScrollingUp) {
        context.read<BottomSheetState>().expand();
      }
      prevScrollOffset = _scrollController.offset;
    });

    return AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        height: context.watch<BottomSheetState>().height,
        constraints: const BoxConstraints(
          maxWidth: 500,
        ),
        onEnd: () {
          if (context.read<BottomSheetState>().isAnimating) {
            context.read<BottomSheetState>().setIsAnimating(false);
          }
        },
        curve: Curves.fastOutSlowIn,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: isExpanded
                ? null
                : const BorderRadius.vertical(top: Radius.circular(20))),
        duration: const Duration(milliseconds: 400),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 24, bottom: 12),
                width: 25,
                height: 4,
                decoration: BoxDecoration(
                  color: context.watch<BottomSheetState>().isExpanded
                      ? Theme.of(context).colorScheme.surface
                      : Theme.of(context).colorScheme.outline,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  PlaceModel place = places[index];

                  String distance =
                      place.location.distance.toStringAsFixed(1).toString();
                  String type = placeTypeMap[place.type]?.label ?? place.type;

                  return Container(
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
                                  child: Text(place.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge),
                                ),
                                Text('$distance km · $type',
                                    style:
                                        Theme.of(context).textTheme.labelLarge)
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.bookmark_outline, size: 20),
                            ),
                          ],
                        ),
                        Container(
                            height: 120,
                            margin: const EdgeInsets.only(top: 10.0),
                            child: ListView.separated(
                              shrinkWrap: true,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: places[index].images.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 8),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      place.images[index].small,
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            )),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 20),
                itemCount: places.length,
              ),
            ),
          ],
        ));
  }
}
