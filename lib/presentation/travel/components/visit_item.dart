import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

class VisitItem extends StatelessWidget {
  final Visit visit;

  const VisitItem({super.key, required this.visit});

  @override
  Widget build(BuildContext context) {
    final bookmarkViewModel = context.watch<BookmarkViewModel>();

    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    bool isBookmarked =
        bookmarkViewModel.state.placeIdSet.contains(visit.place.id);

    return Container(
      height: 252,
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => PlaceDetailPage(place: visit.place))),
            child: ListTile(
                title: Text(visit.place.name),
                contentPadding: EdgeInsets.zero,
                subtitle: Text(visit.place.type.label),
                titleTextStyle:
                    textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
                subtitleTextStyle: textTheme.bodyMedium,
                leading: SvgPicture.asset(
                    width: 24,
                    height: 24,
                    "assets/markers/${visit.place.type.name}.svg"),
                trailing: IconButton(
                  icon: Icon(
                      isBookmarked ? Icons.bookmark : Icons.bookmark_outline),
                  onPressed: isBookmarked
                      ? () => bookmarkViewModel
                          .onEvent(BookmarkEvent.deletePlace(visit.place))
                      : () => bookmarkViewModel
                          .onEvent(BookmarkEvent.addPlace(visit.place)),
                )),
          ),
          SizedBox(
              height: 164,
              child: InfiniteCarousel.builder(
                  itemCount: max(1, visit.place.images.length),
                  itemExtent: 167,
                  center: false,
                  itemBuilder: (context, index, _) {
                    final defaultImage = Image.asset("assets/image/default.png",
                        fit: BoxFit.cover);

                    return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        child: index < visit.place.images.length
                            ? Image.network(visit.place.images[index].medium,
                                fit: BoxFit.cover,
                                errorBuilder: (context, exception, trace) =>
                                    defaultImage)
                            : defaultImage);
                  })),
        ],
      ),
    );
  }
}
