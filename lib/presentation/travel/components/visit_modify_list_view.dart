import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/visit_label_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/visit_modify_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_view_model.dart';

class VisitModifyListView extends StatelessWidget {
  final double gapHeight;
  const VisitModifyListView({super.key, required this.gapHeight});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelViewModel>();
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
              physics: const ClampingScrollPhysics(),
              buildDefaultDragHandles: false,
              header: state.items.isNotEmpty
                  ? VisitLabelItem(
                      date: state.items.firstOrNull
                          ?.whenOrNull(label: (date) => date))
                  : null,
              itemBuilder: (context, index) => Container(
                  key: Key('$index'),
                  child: state.items[index + 1].when(
                      label: (date) => VisitLabelItem(date: date),
                      item: (visit) =>
                          VisitModifyListItem(visit: visit, index: index))),
              itemCount: max(state.items.length - 1, 0),
              onReorderStart: (index) {
                HapticFeedback.heavyImpact();
              },
              onReorder: (oldIndex, newIndex) => viewModel.onEvent(
                  TravelEvent.reorderVisit(oldIndex + 1, newIndex + 1))),
        ),
        SizedBox(height: gapHeight + 30)
      ],
    );
  }
}
