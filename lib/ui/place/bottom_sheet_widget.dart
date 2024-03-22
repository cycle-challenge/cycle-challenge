import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/place_view_model.dart';
import 'package:yeohaeng_ttukttak/ui/place/place_detail_view.dart';
import 'package:yeohaeng_ttukttak/ui/place/place_list_view.dart';
import 'package:yeohaeng_ttukttak/ui/place/place_simple_view.dart';

class BottomSheetWidget extends StatelessWidget {

  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isExpanded = context.read<BottomSheetState>().isExpanded;

    bool isPlaceSelected = context.watch<PlaceViewModel>().isSelected;
    Widget view = isPlaceSelected
        ? (isExpanded ? PlaceDetailView() : PlaceSimpleView())
        : PlaceListView();

    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
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
    );
  }
}
