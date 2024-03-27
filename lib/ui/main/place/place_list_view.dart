import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';

class PlaceListView extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    List<PlaceModel> places = context.watch<PlaceViewModel>().places;

    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      context.read<BottomSheetState>().setCanViewScrollUp(canScrollUp);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!context.watch<BottomSheetState>().isExpanded)
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
        Expanded(
          child: ListView.separated(
            controller: _controller,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              PlaceModel place = places[index];

              String distance =
                  place.location.distance?.toStringAsFixed(1).toString() ??
                      "0.0";
              String type = place.type.label;

              return GestureDetector(
                onTap: () {
                  pushNavigate(context);
                  context.read<PlaceViewModel>().selectPlace(place.id);
                  context.read<BottomSheetState>().expand();
                },
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
                                child: Text(place.name,
                                    style:
                                        Theme.of(context).textTheme.titleLarge),
                              ),
                              Text('$distance km · $type',
                                  style: Theme.of(context).textTheme.labelLarge)
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_outline, size: 20),
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
                              return GestureDetector(
                                onTap: () {},
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: index < place.images.length
                                      ? Image.network(
                                          place.images[index].small,
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
                const SizedBox(height: 20),
            itemCount: places.length,
          ),
        ),
      ],
    );
  }
}
