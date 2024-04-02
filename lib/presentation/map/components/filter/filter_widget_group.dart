import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/filter/filter_widget.dart';
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
    final viewModel = context.watch<MapViewModel>();
    final travelFilter = viewModel.filterState.travelFilter;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label,
                style: titleLarge?.copyWith(fontWeight: FontWeight.w600)),
            TextButton(
                onPressed: () {
                  if (filters.isNotEmpty) {
                    filters.clear();
                  } else {
                    filters.addAll(target);
                  }
                  viewModel.onEvent(MapEvent.updateFilter(travelFilter));
                },
                child: Text(
                  filters.isNotEmpty ? "모두해제" : "모두선택",
                  style: bodyMedium,
                ))
          ],
        ),
        Wrap(
          spacing: 8.0,
          children: target
              .map((period) => FilterWidget(
              isSelected: filters.contains(period),
              iconData: period.iconData,
              label: period.label,
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
        const Divider(
          thickness: 1.0,
        )
      ],
    );
  }
}