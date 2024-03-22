import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/place_type.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';

import '../../data/models/place_model.dart';

class PlaceSimpleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PlaceModel? place = context.read<PlaceViewModel>().selectedPlace;
    if (place == null) return const SizedBox();

    String distance = place.location.distance.toStringAsFixed(1).toString();
    String type = placeTypeMap[place.type]?.label ?? place.type;

    return GestureDetector(
      onVerticalDragUpdate: (details) {
        double? delta = details.primaryDelta;

        bool isAnimating = context.read<BottomSheetState>().isAnimating;
        if (delta == null || isAnimating) return;

        bool isExpanded = context.read<BottomSheetState>().isExpanded;

        if (!isExpanded && delta < 0) {
          pushNavigate(context);
          context.read<BottomSheetState>().expand();
        }
      },
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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: const BoxConstraints(maxWidth: 230),
                      child: Text(place.name,
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                    Text('$distance km · $type',
                        style: Theme.of(context).textTheme.labelLarge)
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
          )
        ],
      ),
    );
  }
}
