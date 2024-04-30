import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/components/visit_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_view_model.dart';

class GroupedVisitListView extends StatelessWidget {
  final DateTimeRange? travelDates;

  final List<Visit> visits;

  const GroupedVisitListView(
      {super.key, required this.visits, required this.travelDates});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelCreateViewModel>();
    final state = viewModel.state;

    return ReorderableListView.builder(
        buildDefaultDragHandles: false,
        header: SizedBox(
            width: double.maxFinite,
            child:
                Text(state.group[0].whenOrNull(label: (date) => date) ?? '')),
        itemBuilder: (context, index) {
          return state.group[index + 1].when(
              label: (date) => SizedBox(
                  key: Key('${index}'),
                  width: double.maxFinite,
                  child: Text(date)),
              visit: (visit) {
                return Container(
                    key: Key('${index}'),
                    child: VisitListItem(visit: visit, index: index));
              });
        },
        itemCount: state.group.length - 1,
        onReorderStart: (index) {
          HapticFeedback.heavyImpact();
        },
        onReorder: (oldIndex, newIndex) {
          viewModel
            .onEvent(TravelCreateEvent.reorderVisit(oldIndex, newIndex));
        });
  }
}
