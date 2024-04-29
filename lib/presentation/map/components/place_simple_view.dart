import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

import 'package:yeohaeng_ttukttak/data/models/place_model.dart';

class PlaceSimpleView extends StatelessWidget {
  final PlaceModel? place;

  const PlaceSimpleView({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    if (place == null) return const SizedBox();

    String distance =
        place!.location.distance?.toStringAsFixed(1).toString() ?? "0.0";
    String type = place!.type.label;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => PlaceDetailPage(place: place!)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        ),
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
                  onPressed: () {
                    final viewModel = context.read<MapViewModel>();
                    viewModel.onEvent(const MapEvent.selectPlace(null));
                  },
                  icon: const Icon(Icons.close, size: 20),
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
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
