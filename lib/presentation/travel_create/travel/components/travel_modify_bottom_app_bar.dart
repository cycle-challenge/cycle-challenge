import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/components/travel_edit_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_view_model.dart';


class TravelModifyBottomAppBar extends StatelessWidget {
  const TravelModifyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<TravelViewModel>();
    final state = viewModel.state;

    final startedOn = state.travel.startedOn;
    final endedOn = state.travel.endedOn;

    return BottomAppBar(
        surfaceTintColor: colorScheme.surface,
        child: Row(children: [
          IconButton.filledTonal(
              onPressed: () async {
                final travel = await showModalBottomSheet<Travel>(
                    isScrollControlled: true,
                    useSafeArea: true,
                    context: context,
                    builder: (_) => TravelEditSheet(travel: state.travel));
                if (travel == null) return;

                viewModel.onEvent(TravelEvent.edit(travel));
              },
              icon: const Icon(Icons.edit)),
          const SizedBox(width: 8),
          FilledButton.tonalIcon(
              onPressed: () async {
                final now = DateTime.now();

                final range = (startedOn != null && endedOn != null)
                    ? DateTimeRange(start: startedOn, end: endedOn)
                    : null;

                DateTimeRange? travelDate = await showDateRangePicker(
                    initialDateRange: range,
                    context: context,
                    firstDate: now,
                    lastDate: now.add(const Duration(days: 730)));

                if (travelDate == null) return;
                viewModel.onEvent(TravelEvent.setTravelDate(travelDate));
              },
              icon: const Icon(Icons.date_range_outlined),
              label: Text((startedOn != null && endedOn != null)
                  ? '${DateFormat('M.d').format(startedOn)} - ${DateFormat('M.d').format(endedOn)}'
                  : '날짜'))
        ]));
  }
}
