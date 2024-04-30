
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';

class PlaceBookmarkListItem extends StatelessWidget {
  final Place place;

  const PlaceBookmarkListItem({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    String? thumbnailUrl = place.images.firstOrNull?.medium;
    final viewModel = context.watch<BookmarkViewModel>();

    return Dismissible(
      direction: DismissDirection.endToStart,
      background: Container(
          color: Theme.of(context).colorScheme.errorContainer,
          padding: const EdgeInsets.only(right: 16.0),
          child: const Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.delete_forever_outlined))),
      key: Key(place.id.toString()),
      onDismissed: (direction) =>
          viewModel.onEvent(BookmarkEvent.deletePlace(place)),
      child: ListTile(
        shape: Border(
          bottom:
          BorderSide(color: Theme.of(context).colorScheme.outlineVariant),
        ),
        title: Text(place.name),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        subtitle: Text(place.type.label),
        titleTextStyle: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.w600),
        subtitleTextStyle: Theme.of(context).textTheme.bodyMedium,
        leading: SizedBox(
          width: 48,
          height: 48,
          child: ClipRRect(
              child: thumbnailUrl != null
                  ? Image.network(thumbnailUrl, fit: BoxFit.cover)
                  : Image.asset('assets/image/default.png', fit: BoxFit.cover)),
        ),
        trailing: const Icon(Icons.drag_handle),
      ),
    );
  }
}
