import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_type.dart';

import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

class PlaceTypeFilterWidget extends StatelessWidget {
  const PlaceTypeFilterWidget({super.key});

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

class TravelFilterBottomSheetWidget extends StatelessWidget {
  const TravelFilterBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final travelFilter = viewModel.filterState.travelFilter;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FilterWidgetGroup(
                      label: "연령대",
                      target: TravelAgeGroup.values,
                      filters: travelFilter.ageGroup),
                  FilterWidgetGroup(
                      label: "시기",
                      target: TravelPeriod.values,
                      filters: travelFilter.period),
                  FilterWidgetGroup(
                      label: "이동",
                      target: TravelTransport.values,
                      filters: travelFilter.transport),
                  FilterWidgetGroup(
                      label: "목적",
                      target: TravelMotivation.values,
                      filters: travelFilter.motivation),
                  FilterWidgetGroup(
                      label: "동반",
                      target: TravelAccompany.values,
                      filters: travelFilter.accompany),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                      onPressed: () {
                        travelFilter.init();
                        viewModel.onEvent(MapEvent.updateFilter(travelFilter));
                      },
                      child: const Text("초기화"))),
              const SizedBox(width: 16),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary),
                child: Text(
                  "적용",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

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

class FilterWidget extends StatelessWidget {
  final bool _isSelected;

  final IconData? _iconData;

  final String _label;

  final void Function(bool) _onSelected;

  final bool _showCheckmark;

  const FilterWidget(
      {super.key,
      required bool isSelected,
      required IconData? iconData,
      required String label,
      required dynamic onSelected,
      bool? showCheckmark})
      : _onSelected = onSelected,
        _label = label,
        _iconData = iconData,
        _isSelected = isSelected,
        _showCheckmark = showCheckmark ?? true;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        showCheckmark: _showCheckmark,
        checkmarkColor: Theme.of(context).colorScheme.onPrimary,
        shape: StadiumBorder(
            side: BorderSide(
                color: _isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.outlineVariant)),
        label: Text(
          _label,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: _isSelected
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurface),
        ),
        selectedColor: Theme.of(context).colorScheme.primary,
        avatar: !_isSelected && _iconData != null
            ? Icon(
                _iconData,
                size: 16,
              )
            : null,
        selected: _isSelected,
        onSelected: _onSelected);
  }
}
