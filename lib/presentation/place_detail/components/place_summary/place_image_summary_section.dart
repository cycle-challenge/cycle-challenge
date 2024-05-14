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

    final viewModel = context.watch<PlaceDetailViewModel>();

    return Container(
        color: colorScheme.surface,
        padding: const EdgeInsets.only(top: 30, bottom: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('관광지 사진',
                        style: textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 16),
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
                  ]),
            ),
            const SizedBox(height: 12),
            Align(
                alignment: Alignment.centerRight,
                child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextButton.icon(
                        onPressed: () => { DefaultTabController.of(context).index = 1 },
                        icon: const Icon(Icons.chevron_left),
                        label: const Text('사진 더보기'))))
          ],
        ));
  }
}
