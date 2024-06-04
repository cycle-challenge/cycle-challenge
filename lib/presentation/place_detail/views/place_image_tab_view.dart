import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';

class PlaceImageTabView extends StatelessWidget {
  final List images;

  const PlaceImageTabView({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    final networkImages = images.map((e) => NetworkImage(e.large)).toList();

    return GridView.builder(
        itemCount: images.length,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(
            12, 24, 12, MediaQuery.of(context).padding.bottom + 24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1),
        itemBuilder: (_, index) => InkWell(
            onTap: () => showImageViewerPager(
                context,
                useSafeArea: true,
                MultiImageProvider(networkImages, initialIndex: index)),
            child: Image(image: networkImages[index], fit: BoxFit.cover)));
  }
}
