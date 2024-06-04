import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_page.dart';

class PlaceSimpleView extends StatelessWidget {
  final Place place;

  const PlaceSimpleView({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => PlaceDetailPage(place: place))),
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 28),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius:
                const BorderRadius.all(Radius.circular(16))),
        child: PlaceListItem(
          place: place,
          contentPadding: EdgeInsets.zero,
          trailing: IconButton(
            onPressed: () {
              final viewModel = context.read<MapViewModel>();
              viewModel.onEvent(const MapEvent.selectPlace(null));
            },
            icon: const Icon(Icons.close, size: 20),
          ),
        ),
      ),
    );
  }
}
