import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/filter/filter_widget.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/filter/travel_filter_view.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    double filterSheetHeight = MediaQuery.of(context).size.height -
        (Scaffold.of(context).appBarMaxHeight!);

    final viewModel = context.watch<MapViewModel>();

    final placeFilter = viewModel.filterState.placeFilter;
    final travelFilter = viewModel.filterState.travelFilter;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 32.0,
          ),
          ChoiceChip(
              showCheckmark: false,
              label: Text(
                "필터",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: travelFilter.hasAnyFilter
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onSurface),
              ),
              selectedColor: Theme.of(context).colorScheme.primary,
              avatar: Icon(
                Icons.filter_alt,
                size: 16,
                color: travelFilter.hasAnyFilter
                    ? Theme.of(context).colorScheme.onPrimary
                    : null,
              ),
              shape: StadiumBorder(
                  side: BorderSide(
                      color: travelFilter.hasAnyFilter
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.outlineVariant)),
              selected: travelFilter.hasAnyFilter,
              onSelected: (_) => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => Container(
                      height: filterSheetHeight,
                      constraints: const BoxConstraints(maxHeight: 772),
                      child: const TravelFilterBottomSheetWidget()))),
          for (int index = 0; index < PlaceType.values.length; index++)
            Container(
              margin: const EdgeInsets.only(left: 8.0),
              child: FilterWidget(
                label: PlaceType.values[index].label,
                isSelected: placeFilter.type.contains(PlaceType.values[index]),
                iconData: PlaceType.values[index].iconData,
                onSelected: (bool isSelected) {
                  if (isSelected) {
                    placeFilter.type.add(PlaceType.values[index]);
                  } else {
                    placeFilter.type.remove(PlaceType.values[index]);
                  }

                  viewModel.onEvent(MapEvent.updateFilter(placeFilter));
                },
              ),
            )
        ],
      ),
    );
  }
}