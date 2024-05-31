import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/icon_choice_chip.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

class FilterWidgetGroup extends StatelessWidget {
  final String label;
  final List target;
  final Set filters;

  const FilterWidgetGroup(
      {super.key,
      required this.label,
      required this.target,
      required this.filters});

  @override
  Widget build(BuildContext context) {
    TextStyle? titleLarge = Theme.of(context).textTheme.titleLarge;
    TextStyle? bodyMedium = Theme.of(context).textTheme.bodyMedium;

    final textTheme = Theme.of(context).textTheme;

    final viewModel = context.watch<MapViewModel>();
    final travelFilter = viewModel.filterState.travelFilter;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(label),
            trailing: TextButton(
                onPressed: () {
                  if (filters.isNotEmpty) filters.clear();
                  else filters.addAll(target);
                  viewModel.onEvent(MapEvent.updateFilter(travelFilter));
                },
                child: Text(filters.isNotEmpty ? "모두해제" : "모두선택"))),
        Wrap(
          spacing: 8.0,
          children: target
              .map((period) => IconChoiceChip(
                  selected: filters.contains(period),
                  icon: period.iconData != null ? Icon(period.iconData) : null,
                  label: Text(period.label),
                  onSelected: (bool isSelected) {
                    if (isSelected) {
                      filters.add(period);
                    } else {
                      filters.remove(period);
                    }

                    viewModel.onEvent(MapEvent.updateFilter(travelFilter));
                  }))
              .toList(),
        ),
        const SizedBox(height: 8.0),
        const Divider(thickness: 1.0)
      ],
    );
  }
}
