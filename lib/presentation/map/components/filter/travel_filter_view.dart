import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_accompany.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_period.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_age_group.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_motivation.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter/travel_transport.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/filter/filter_widget_group.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

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