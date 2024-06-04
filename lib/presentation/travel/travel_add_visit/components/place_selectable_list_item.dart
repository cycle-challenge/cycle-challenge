import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_add_visit/travel_add_visit_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_add_visit/travel_add_visit_view_model.dart';

class PlaceSelectableListItem extends StatelessWidget {
  final Place place;

  const PlaceSelectableListItem({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    String? thumbnailUrl = place.images.firstOrNull?.medium;
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<TravelAddVisitViewModel>();
    final state = viewModel.state;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
      titleTextStyle:
          textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
      subtitleTextStyle: textTheme.bodyMedium,
      title: Text(place.name),
      subtitle: Text(place.type.label),
      leading: SizedBox(
        width: 48,
        height: 48,
        child: ClipRRect(
            child: thumbnailUrl != null
                ? Image.network(thumbnailUrl, fit: BoxFit.cover)
                : Image.asset('assets/image/default.png', fit: BoxFit.cover)),
      ),
      trailing: Checkbox(
          value: state.selectedPlaces.contains(place),
          onChanged: (value) => viewModel.onEvent(value!
              ? TravelAddVisitEvent.select(place)
              : TravelAddVisitEvent.unselect(place))),
    );
  }
}
