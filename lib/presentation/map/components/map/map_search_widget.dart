import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_delegate.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({
    super.key,
  });

  final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MapViewModel>();
    final colorTheme = Theme.of(context).colorTheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: FilledButton.icon(
          style: FilledButton.styleFrom(
            alignment: Alignment.centerLeft,
            textStyle: textTheme.labelLarge
          ),
          onPressed: () async {
            final result = await showSearch(
                context: context, delegate: Search(), useRootNavigator: true);
            if (result == null) return;

            viewModel.onEvent(MapEvent.selectPlaceSearchResult(result));
          },
          icon: const Icon(Icons.search),
          label: Text('장소 검색', style: textTheme.labelLarge?.copyWith(
            color: colorTheme.foregroundLight
          ))),
    );
  }
}
