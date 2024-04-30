import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_detail/travel_detail_page.dart';

class TravelBookmarkItem extends StatelessWidget {
  final TravelModel travel;

  const TravelBookmarkItem({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    TextStyle? titleLarge = Theme.of(context)
        .textTheme
        .titleLarge
        ?.copyWith(color: Colors.white, fontSize: 20);
    TextStyle? bodyMedium =
    Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => TravelDetailPage(
              travel: travel,
            )));
      },
      child: Container(
        width: double.infinity,
        height: 240,
        constraints: const BoxConstraints(maxWidth: 480),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(travel.thumbnail.medium),
                          fit: BoxFit.cover))),
            ),
            Positioned.fill(
              child: Container(
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
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      travel.name,
                      style: titleLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: travel.nickname,
                              style: bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                              " · ${travel.ageGroup.label} · ${travel.transport.label}")
                        ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
