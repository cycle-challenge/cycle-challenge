import 'package:dart_jts/dart_jts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_page.dart';

class PlaceTravelListItem extends StatelessWidget {
  final Travel travel;

  const PlaceTravelListItem({super.key, required this.travel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();
    bool isBookmarked = bookmarkViewModel.state.travelIdSet.contains(travel.id);

    final defaultImage = Image.asset("assets/image/default.png",
        width: MediaQuery.of(context).size.width, fit: BoxFit.cover);

    return GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TravelPage(travel: travel))),
        child: SizedBox(
            height: 240,
            child: Stack(children: [
              ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.1),
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.5)
                          ]).createShader(bounds),
                  blendMode: BlendMode.srcOver,
                  child: Image.network(travel.thumbnail?.medium ?? '',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      errorBuilder: (context, exception, trace) =>
                          defaultImage)),
              Container(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text(
                                travel.name,
                                style: textTheme.titleLarge
                                    ?.copyWith(fontWeight: FontWeight.w600),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: travel.nickname,
                                    style: textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text:
                                        " · ${travel.ageGroup!.label} · ${travel.transport!.label}")
                              ]))
                            ])),
                        IconButton(
                            onPressed: isBookmarked
                                ? () => bookmarkViewModel
                                    .onEvent(BookmarkEvent.deleteTravel(travel))
                                : () => bookmarkViewModel
                                    .onEvent(BookmarkEvent.addTravel(travel)),
                            icon: Icon(
                                isBookmarked
                                    ? Icons.bookmark
                                    : Icons.bookmark_outline,
                                color: Colors.white))
                      ]))
            ])));
  }
}
