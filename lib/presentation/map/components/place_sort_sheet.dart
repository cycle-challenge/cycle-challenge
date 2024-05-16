import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_sort_option.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';

class PlaceSortSheet extends StatelessWidget {
  const PlaceSortSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final state = viewModel.filterState;

    return Wrap(children: [
      Padding(
          padding: const EdgeInsets.only(top: 18.0, bottom: 48.0),
          child: Column(children: [
            RadioListTile(
                value: const PlaceSortOption.highestRated(),
                groupValue: state.placeSortOption,
                title: const Text('평점 높은 순'),
                onChanged: (value) => Navigator.of(context).pop(value)),
            RadioListTile(
                value: const PlaceSortOption.mostReviewed(),
                groupValue: state.placeSortOption,
                title: const Text('리뷰 많은 순'),
                onChanged: (value) => Navigator.of(context).pop(value)),
            RadioListTile(
                value: const PlaceSortOption.nearest(),
                groupValue: state.placeSortOption,
                title: const Text('거리 가까운 순'),
                onChanged: (value) => Navigator.of(context).pop(value))
          ]))
    ]);
  }
}

void showPlaceSortSheet(BuildContext context) async {
  final viewModel = context.read<MapViewModel>();

  final result = await showModalBottomSheet<PlaceSortOption>(
      context: context, builder: (context) => const PlaceSortSheet());

  if (result == null) return;

  viewModel.onEvent(MapEvent.sortPlace(result));
}
