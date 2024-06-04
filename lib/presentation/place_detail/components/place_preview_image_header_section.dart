import 'dart:math';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_event.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';

class PlacePreviewImageHeaderSection extends StatelessWidget {
  final Place place;

  const PlacePreviewImageHeaderSection({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PlaceDetailViewModel>();
    final state = viewModel.state;

    return Column(children: [
      CarouselSlider.builder(
          itemCount: max(1, place.images.length),
          itemBuilder: (_, index, __) {
            final defaultImage = Image.asset("assets/image/default.png",
                width: MediaQuery.of(context).size.width, fit: BoxFit.cover);

            return ShaderMask(
                shaderCallback: (bounds) {
                  return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.2),
                        Colors.black.withOpacity(0.5)
                      ]).createShader(bounds);
                },
                blendMode: BlendMode.srcOver,
                child: index < place.images.length
                    ? Image.network(place.images[index].large,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        errorBuilder: (context, exception, trace) =>
                            defaultImage)
                    : defaultImage);
          },
          options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1.0,
              height: 287,
              onPageChanged: (index, _) =>
                  viewModel.onEvent(PlaceDetailEvent.changeImageIndex(index)))),
      TweenAnimationBuilder(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          tween: Tween<double>(
              begin: 0, end: min(1.0, (state.imageIndex + 1) / place.images.length)),
          builder: (context, value, _) => LinearProgressIndicator(value: value))
    ]);
  }
}
