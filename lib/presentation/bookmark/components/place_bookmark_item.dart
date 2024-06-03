import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

class PlaceBookmarkItem extends StatelessWidget {
  final Place place;

  const PlaceBookmarkItem({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    String? thumbnailUrl = place.images.firstOrNull?.medium;

    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => PlaceDetailPage(place: place)));
        },
        child: Container(
            color: Colors.white,
            child: Stack(children: [
              Positioned.fill(
                  child: ClipRRect(
                      child: thumbnailUrl != null
                          ? Image.network(thumbnailUrl, fit: BoxFit.cover)
                          : Image.asset('assets/image/default.png',
                              fit: BoxFit.cover))),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.75),
                      ]),
                ),
              ),
              Positioned(
                  bottom: 16,
                  left: 8,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            width: 16,
                            height: 16,
                            "assets/markers/${place.type.name}.svg"),
                        const SizedBox(width: 6),
                        Text(place.name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600))
                      ]))
            ])));
  }
}
