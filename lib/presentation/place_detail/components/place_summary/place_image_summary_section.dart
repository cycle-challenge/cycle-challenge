import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlaceImageSummarySection extends StatelessWidget {
  final Place place;

  const PlaceImageSummarySection({super.key, required this.place});

  Image getPlaceImage(Place place, int index) {
    final defaultImage =
        Image.asset('assets/image/default.png', fit: BoxFit.cover);

    if (index >= place.images.length) {
      return defaultImage;
    }

    return Image.network(place.images.elementAtOrNull(index)?.medium ?? '',
        errorBuilder: (_, __, ___) => defaultImage, fit: BoxFit.cover);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('관광지 사진'),
              trailing: TextButton(
                  onPressed: () => {DefaultTabController.of(context).index = 1},
                  child: const Text('더보기'))),
          StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: getPlaceImage(place, 0)),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: getPlaceImage(place, 1)),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: getPlaceImage(place, 2)),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: getPlaceImage(place, 3)),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: getPlaceImage(place, 4)),
              ])
        ]));
  }
}
