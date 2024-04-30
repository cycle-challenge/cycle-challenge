import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_list_view.dart';

import 'package:yeohaeng_ttukttak/presentation/map/components/travel_list_view.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final mapViewModel = context.watch<MapViewModel>();
    final state = viewModel.state;

    List<Place> places = mapViewModel.filterState.filteredPlaces;
    List<Travel> travels = mapViewModel.filterState.filteredTravels;

    Widget? view = viewModel.state.navigationIndex == 1
        ? PlaceListView(places: places)
        : (viewModel.state.navigationIndex == 2)
            ? TravelListView(travels: travels)
            : null;

    return Listener(
      onPointerMove: (event) {
        if (state.isAnimating) return;

        bool isScrollingUp = event.delta.dy > 10;

        bool canViewScrollUp = state.canViewScrollUp;
        bool isExpanded = state.isExpanded;

        if (isScrollingUp && !canViewScrollUp & isExpanded) {
          return viewModel.onEvent(const MainEvent.contractBottomSheet());
        }
        if (!isScrollingUp && !isExpanded) {
          return viewModel.onEvent(const MainEvent.expandBottomSheet());
        }
      },
      onPointerDown: (ev) {},
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        height: state.height,
        onEnd: () =>
            viewModel.onEvent(const MainEvent.stopBottomSheetAnimation()),
        curve: Curves.fastOutSlowIn,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: state.isExpanded
                ? null
                : const BorderRadius.vertical(top: Radius.circular(20))),
        duration: const Duration(milliseconds: 400),
        child: view,
      ),
    );
  }
}
