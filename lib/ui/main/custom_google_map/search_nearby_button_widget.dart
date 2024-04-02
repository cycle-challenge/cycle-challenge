import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

class SearchNearbyButtonWidget extends StatelessWidget {

  const SearchNearbyButtonWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final state = viewModel.state;

    if (!state.isShownSearchButton) return const SizedBox();

    return GestureDetector(
      onTap: () {
        viewModel.onEvent(const MapEvent.findNearbyPlace());
        viewModel.onEvent(const MapEvent.hideSearchButton());
      },
      child: Container(
        width: 155,
        height: 35,
        margin: const EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                width: 1, color: Theme.of(context).colorScheme.outlineVariant),
            color: Theme.of(context).colorScheme.surface),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.refresh,
                size: 16, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 5),
            Text('현위치에서 재검색', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(width: 3),
          ],
        ),
      ),
    );
  }
}
