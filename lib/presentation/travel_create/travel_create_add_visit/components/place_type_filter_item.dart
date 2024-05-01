import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_add_visit/travel_create_add_visit_view_model.dart';

class PlaceTypeFilterItem extends StatelessWidget {
  final PlaceType type;

  const PlaceTypeFilterItem({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelCreateAddVisitViewModel>();
    final state = viewModel.state;

    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return FilterChip(
        selectedColor: colorScheme.primary,
        checkmarkColor: colorScheme.onPrimary,
        shape: StadiumBorder(
            side: BorderSide(
                color: state.placeFilter.type.contains(type)
                    ? colorScheme.primary
                    : colorScheme.outlineVariant)),
        onSelected: (isSelected) {
          if (isSelected) state.placeFilter.type.add(type);
          else state.placeFilter.type.remove(type);

          viewModel.onEvent(
              TravelCreateAddVisitEvent.updateFilter(state.placeFilter));
        },
        avatar: !state.placeFilter.type.contains(type)
            ? Icon(type.iconData, size: 16)
            : null,
        label: Text(type.label,
            style: textTheme.labelLarge?.copyWith(
                color: state.placeFilter.type.contains(type)
                    ? colorScheme.onPrimary
                    : colorScheme.onSurface)),
        selected: state.placeFilter.type.contains(type));
  }
}
