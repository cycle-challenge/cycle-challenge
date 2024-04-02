import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_list_view.dart';

import 'package:yeohaeng_ttukttak/presentation/map/components/travel_list_view.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();

    final state = viewModel.state;
    final bottomSheetState = viewModel.bottomSheetState;

    List<TravelModel> travels = viewModel.filterState.filteredTravels;

    Widget? view = state.navigationIndex == 1
        ? PlaceListView()
        : (state.navigationIndex == 2)
            ? TravelListView(travels: travels)
            : null;

    return Listener(
      onPointerMove: (event) {
        if (bottomSheetState.isAnimating) return;

        bool isScrollingUp = event.delta.dy > 0;

        bool canViewScrollUp = bottomSheetState.canViewScrollUp;
        bool isExpanded = bottomSheetState.isExpanded;

        if (isScrollingUp && !canViewScrollUp & isExpanded) {
          return viewModel.onEvent(const MapEvent.contractBottomSheet());
        }
        if (!isScrollingUp && !isExpanded) {
          return viewModel.onEvent(const MapEvent.expandBottomSheet());
        }
      },
      onPointerDown: (ev) {},
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        height: bottomSheetState.height,
        onEnd: () =>
            viewModel.onEvent(const MapEvent.stopBottomSheetAnimation()),
        curve: Curves.fastOutSlowIn,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: bottomSheetState.isExpanded
                ? null
                : const BorderRadius.vertical(top: Radius.circular(20))),
        duration: const Duration(milliseconds: 400),
        child: view,
      ),
    );
  }
}
