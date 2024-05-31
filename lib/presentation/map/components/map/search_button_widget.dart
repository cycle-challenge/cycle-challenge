import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/widget.dart';

class SearchButtonWidget extends StatelessWidget {
  const SearchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final state = viewModel.state;

    if (!state.isShownSearchButton) return const SizedBox();

    return FilledButton.icon(
            style: FilledButton.styleFrom(
                textStyle: TextStyle(fontWeight: FontWeight.w500),
                padding: const EdgeInsets.fromLTRB(10, 0, 16, 0)),
            onPressed: () =>
                viewModel.onEvent(const MapEvent.findNearbyPlace()),
            icon: const Icon(Icons.refresh, size: 18),
            label: const Text('현위치에서 재검색'))
        .invertColor(context);
  }
}
