import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';

import 'package:yeohaeng_ttukttak/states/place_view_model.dart';
import 'package:yeohaeng_ttukttak/data/models/place_type.dart';

class PlaceTypeFilterWidget extends StatelessWidget {
  const PlaceTypeFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, bool> areFiltered = context.watch<PlaceViewModel>().areFiltered;

    double filterSheetHeight = MediaQuery.of(context).size.height -
        (Scaffold.of(context).appBarMaxHeight!);

    bool hasAnyTravelFilter =
        context.watch<PlaceViewModel>().travelFilter.hasAnyFilter;

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
                    color: hasAnyTravelFilter
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onSurface),
              ),
              selectedColor: Theme.of(context).colorScheme.primary,
              avatar: Icon(
                Icons.filter_alt,
                size: 16,
                color: hasAnyTravelFilter
                    ? Theme.of(context).colorScheme.onPrimary
                    : null,
              ),
              shape: StadiumBorder(side: BorderSide(color: hasAnyTravelFilter
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surface)),
              selected: hasAnyTravelFilter,
              onSelected: (_) => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => Container(
                      height: filterSheetHeight,
                      constraints: const BoxConstraints(maxHeight: 772),
                      child: TravelFilterBottomSheetWidget()))),

          for (int index = 0; index < placeTypes.length; index++)
            Container(
              margin: const EdgeInsets.only(left: 8.0),
              child: FilterWidget(
                label: placeTypes[index].label,
                isSelected: areFiltered[placeTypes[index].value]!,
                iconData: placeTypes[index].iconData,
                onSelected: (selected) {
                  context
                      .read<PlaceViewModel>()
                      .filterType(placeTypes[index].value);
                },
              ),
            )
        ],
      ),
    );
  }
}

class TravelFilterBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      filters: context
                          .watch<PlaceViewModel>()
                          .travelFilter
                          .ageGroup),
                  FilterWidgetGroup(
                      label: "시기",
                      target: TravelPeriod.values,
                      filters:
                          context.watch<PlaceViewModel>().travelFilter.period),
                  FilterWidgetGroup(
                      label: "이동",
                      target: TravelTransport.values,
                      filters: context
                          .watch<PlaceViewModel>()
                          .travelFilter
                          .transport),
                  FilterWidgetGroup(
                      label: "목적",
                      target: TravelMotivation.values,
                      filters: context
                          .watch<PlaceViewModel>()
                          .travelFilter
                          .motivation),
                  FilterWidgetGroup(
                      label: "동반",
                      target: TravelAccompany.values,
                      filters: context
                          .watch<PlaceViewModel>()
                          .travelFilter
                          .accompany),
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
                        context.read<PlaceViewModel>().notify(() =>
                            context.read<PlaceViewModel>().travelFilter.init());
                      },
                      child: Text("초기화"))),
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
  String label;
  List target;
  Set filters;

  FilterWidgetGroup(
      {super.key,
      required this.label,
      required this.target,
      required this.filters});

  @override
  Widget build(BuildContext context) {
    TextStyle? titleLarge = Theme.of(context).textTheme.titleLarge;
    TextStyle? bodyMedium = Theme.of(context).textTheme.bodyMedium;

    var notify = context.read<PlaceViewModel>().notify;

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
                    notify(() => filters.clear());
                  } else {
                    notify(() => filters.addAll(target));
                  }
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
                  onSelected: (selected) {
                    if (selected)
                      notify(() => filters.add(period));
                    else
                      notify(() => filters.remove(period));
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
  bool _isSelected;

  IconData? _iconData;

  String _label;

  var _onSelected;

  bool _showCheckmark;

  FilterWidget(
      {super.key,
      required bool isSelected,
      required IconData? iconData,
      required String label,
      required dynamic onSelected,
        bool? showCheckmark
      })
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
        shape: StadiumBorder(side: BorderSide(color: _isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.surface)),
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
