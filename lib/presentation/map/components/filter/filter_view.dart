import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/filter/travel_filter_view.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/icon_choice_chip.dart';
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

    final colorTheme = Theme.of(context).colorTheme;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Row(
          children: [
            const SizedBox(width: 32.0),
            IconChoiceChip(
                label: const Text("필터"),
                icon: const Icon(Icons.filter_alt),
                selected: travelFilter.hasAnyFilter,
                onSelected: (_) => showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Container(
                        height: filterSheetHeight,
                        constraints: const BoxConstraints(maxHeight: 772),
                        child: const TravelFilterBottomSheetWidget()))),
            for (PlaceType type in PlaceType.values) ...[
              const SizedBox(width: 8),
              IconChoiceChip(
                  label: Text(type.label),
                  icon: Icon(type.iconData),
                  selected: placeFilter.type.contains(type),
                  onSelected: (bool isSelected) {
                    if (isSelected) {
                      placeFilter.type.add(type);
                    } else {
                      placeFilter.type.remove(type);
                    }
                    viewModel.onEvent(MapEvent.updateFilter(placeFilter));
                  })
            ]
          ],
        ),
      ),
    );
  }
}
