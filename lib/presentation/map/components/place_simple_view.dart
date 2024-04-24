import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

import 'package:yeohaeng_ttukttak/data/models/place_model.dart';

class PlaceSimpleView extends StatelessWidget {

   final PlaceModel? place;

  const PlaceSimpleView({super.key, required this.place });

  @override
  Widget build(BuildContext context) {
    if (place == null) return const SizedBox();

    final viewModel = context.watch<MapViewModel>();
    final dataState = viewModel.dataState;

    String distance =
        place!.location.distance?.toStringAsFixed(1).toString() ?? "0.0";
    String type = place!.type.label;

    bool isBookmarked = dataState.bookmarks
        .where((elm) => elm.targetId == place?.id)
        .isNotEmpty;

    return GestureDetector(
      onTap: () {

        UseCases useCases = context.read<UseCases>();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider(
              create: (_) => PlaceDetailViewModel(
                  place!.googlePlaceId, useCases),
              child: PlaceDetailScreen(place: place!),
            )));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place!.name,
                      style: Theme.of(context).textTheme.titleLarge,
                      softWrap: false,
                    ),
                    Text('$distance km · $type',
                        style: Theme.of(context).textTheme.labelLarge)
                  ],
                ),
                IconButton(
                  onPressed: isBookmarked
                      ? () => viewModel.onEvent(
                      MapEvent.deletePlaceBookmark(place!.id))
                      : () => viewModel.onEvent(
                      MapEvent.addPlaceBookmark(place!.id)),
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

                    return GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: index < place!.images.length
                            ? Image.network(
                                place!.images[index].small,
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
  }
}
