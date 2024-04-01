import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/navigation_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/place_detail/place_detail_view_model.dart';
import 'package:yeohaeng_ttukttak/ui/main/place/place_list_view.dart';
import 'package:yeohaeng_ttukttak/ui/main/place/place_simple_view.dart';

import 'package:yeohaeng_ttukttak/ui/main/travel/travel_list_view.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isExpanded = context.read<BottomSheetState>().isExpanded;

    bool isPlaceSelected = context.watch<PlaceViewModel>().isSelected;

    int navigationIndex = context.watch<NavigationState>().selectedIndex;
    List<TravelModel> travels = context.watch<PlaceViewModel>().travels;

    PlaceViewModel viewModel = context.watch<PlaceViewModel>();
    UseCases useCases = context.read<UseCases>();

    Widget view = isPlaceSelected
        ? PlaceSimpleView()
        : (navigationIndex == 1
            ? PlaceListView()
            : TravelListView(travels: travels));

    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Listener(
        onPointerMove: (event) {
          if (context.read<BottomSheetState>().isAnimating) return;

          bool isScrollingUp = event.delta.dy > 0;
          bool canViewScrollUp =
              context.read<BottomSheetState>().canViewScrollUp;
          bool isExpanded = context.read<BottomSheetState>().isExpanded;

          if (isScrollingUp && !canViewScrollUp & isExpanded) {
            return popNavigate(context);
          }
          if (!isScrollingUp && !isExpanded) {
            pushNavigate(context);
            return context.read<BottomSheetState>().expand();
          }
        },
        onPointerDown: (ev) {},
        child: AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          height: context.watch<BottomSheetState>().height,
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          onEnd: () {
            if (context.read<BottomSheetState>().isAnimating) {
              context.read<BottomSheetState>().setIsAnimating(false);
            }
          },
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: isExpanded
                  ? null
                  : const BorderRadius.vertical(top: Radius.circular(20))),
          duration: const Duration(milliseconds: 400),
          child: view,
        ),
      ),
    );
  }
}
