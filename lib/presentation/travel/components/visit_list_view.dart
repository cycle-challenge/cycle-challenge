import 'dart:math';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/date_label_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/components/visit_item.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_view_model.dart';

class VisitListView extends StatefulWidget {
  final double gapHeight;

  const VisitListView({super.key, required this.gapHeight});

  @override
  State<VisitListView> createState() => _VisitListViewState();
}

class _VisitListViewState extends State<VisitListView> {
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  final double itemHeight = 252;
  final double labelHeight = 66;

  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<TravelViewModel>();

      _itemPositionsListener.itemPositions.addListener(() {
        ItemPosition? position = _itemPositionsListener.itemPositions.value
            .firstWhereOrNull((element) => element.itemLeadingEdge <= 0);

        if (position == null) {
          return viewModel
              .onEvent(const TravelEvent.setCanPanelScrollUp(false));
        }

        viewModel.onEvent(const TravelEvent.setCanPanelScrollUp(true));
        viewModel.onEvent(TravelEvent.scrollVisit(position.index));
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TravelViewModel>();
    final state = viewModel.state;

    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final lastItemHeight = state.items.isNotEmpty
        ? state.items.last
            .when(label: (_) => labelHeight, item: (_) => itemHeight)
        : 0;

    return Column(children: [
      Container(
          width: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Center(
              child: Container(
                  width: 36,
                  height: 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorScheme.outline)))),
      Expanded(
          child: ScrollablePositionedList.builder(
              itemScrollController: _itemScrollController,
              itemPositionsListener: _itemPositionsListener,
              itemCount: state.items.length + 1,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                if (index == state.items.length) {
                  return SizedBox(
                      height: max(state.panelHeight - lastItemHeight + 40, 0),
                      child: Center(
                          child: IconButton.filledTonal(
                              onPressed: () => _itemScrollController.scrollTo(
                                  index: 0,
                                  duration: const Duration(milliseconds: 200)),
                              icon: const Icon(Icons.arrow_upward))));
                }
                return state.items[index].when(
                    label: (datetime) => DateLabelItem(date: datetime),
                    item: (visit) => VisitItem(visit: visit));
              })),
      SizedBox(height: widget.gapHeight)
    ]);
  }
}
