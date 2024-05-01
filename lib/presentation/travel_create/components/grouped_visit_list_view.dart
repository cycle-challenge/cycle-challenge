import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/components/visit_label_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/components/visit_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_view_model.dart';

class GroupedVisitListView extends StatelessWidget {
  final double gapHeight;
  const GroupedVisitListView({super.key, required this.gapHeight});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelCreateViewModel>();
    final state = viewModel.state;

    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Center(
              child: Container(
            width: 36,
            height: 6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorScheme.outline),
          )),
        ),
        Expanded(
          child: ReorderableListView.builder(
              buildDefaultDragHandles: false,
              header: state.group.isNotEmpty ? VisitLabelItem(
                  date: state.group[0].whenOrNull(label: (date) => date)) : null,
              itemBuilder: (context, index) => Container(
                  key: Key('$index'),
                  child: state.group[index + 1].when(
                      label: (date) => VisitLabelItem(date: date),
                      visit: (visit) {
                        return VisitListItem(visit: visit, index: index);
                      }),
                ),
              itemCount: max(state.group.length - 1, 0),
              onReorderStart: (index) {
                HapticFeedback.heavyImpact();
              },
              onReorder: (oldIndex, newIndex) => viewModel.onEvent(
                    TravelCreateEvent.reorderVisit(oldIndex + 1, newIndex + 1))),
        ),
        SizedBox(height: gapHeight + 30)
      ],
    );
  }
}
