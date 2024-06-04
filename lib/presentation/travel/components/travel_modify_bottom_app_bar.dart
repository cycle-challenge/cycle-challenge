import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/travel_edit_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_view_model.dart';

class TravelModifyBottomAppBar extends StatelessWidget {
  const TravelModifyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorTheme;

    final viewModel = context.watch<TravelViewModel>();
    final state = viewModel.state;

    final startedOn = state.travel.startedOn;
    final endedOn = state.travel.endedOn;

    return BottomAppBar(
        child: Row(children: [
      IconButton.outlined(
          style: IconButton.styleFrom(
              backgroundColor: colorTheme.background,
              side: BorderSide(color: colorTheme.border)),
          icon: const Icon(Icons.edit_outlined),
          onPressed: () async {
            final travel = await showModalBottomSheet<Travel>(
                isScrollControlled: true,
                useSafeArea: true,
                context: context,
                builder: (_) => TravelEditSheet(travel: state.travel));
            if (travel == null) return;

            viewModel.onEvent(TravelEvent.edit(travel));
          }),
      const SizedBox(width: 8),
      OutlinedButton.icon(
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
