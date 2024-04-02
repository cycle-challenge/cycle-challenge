import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceListView extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  PlaceListView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final filterState = viewModel.filterState;
    final bottomSheetState = viewModel.bottomSheetState;

    _controller.addListener(() {
      bool canScrollUp = _controller.offset > 0;
      viewModel.onEvent(MapEvent.setCanViewScrollUp(canScrollUp));
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!bottomSheetState.isExpanded)
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
              PlaceModel place = filterState.filteredPlaces[index];

              String distance =
                  place.location.distance?.toStringAsFixed(1).toString() ??
                      "0.0";
              String type = place.type.label;

              return GestureDetector(
                onTap: () {
                  UseCases useCases = context.read<UseCases>();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ChangeNotifierProvider(
                            create: (_) => PlaceDetailViewModel(
                                place.googlePlaceId, useCases),
                            child: PlaceDetailScreen(place: place),
                          )));
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
            itemCount: filterState.filteredPlaces.length,
          ),
        ),
      ],
    );
  }
}
