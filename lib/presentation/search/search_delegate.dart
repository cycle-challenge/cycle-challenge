import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_event.dart';
import 'package:yeohaeng_ttukttak/presentation/search/serch_view_model.dart';

class Search extends SearchDelegate<Place?> {
  Place? result;

  @override
  void close(BuildContext context, Place? result) {
    final viewModel = context.read<SearchViewModel>();
    query = '';
    viewModel.onEvent(const SearchEvent.initState());

    super.close(context, result);

    if (result != null) {
      final viewModel = context.read<MapViewModel>();
      viewModel.onEvent(MapEvent.selectPlaceResult(result));
    }
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return theme.copyWith(
      hintColor: Colors.red,
      navigationBarTheme: theme.navigationBarTheme.copyWith(),
      textTheme: theme.textTheme
          .copyWith(titleLarge: theme.textTheme.bodyLarge // query Color
              ),
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
          hintStyle: theme.textTheme.bodyLarge
              ?.copyWith(color: theme.colorScheme.outline),
          fillColor: theme.colorScheme.surface,
          filled: true,
          isDense: true,
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.colorScheme.outline)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.colorScheme.outline))),
      appBarTheme: theme.appBarTheme.copyWith(
        titleSpacing: 0,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    if (query.isEmpty) {
      return <Widget>[const SizedBox(width: 48)];
    }

    final viewModel = context.read<SearchViewModel>();

    return <Widget>[
      IconButton(
          onPressed: () {
            query = '';
            viewModel.onEvent(const SearchEvent.initState());
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();
    final places =
        query.isEmpty ? viewModel.state.history : viewModel.state.places;
    viewModel.onEvent(SearchEvent.search(query));

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        String address =
            places[index].roadAddress ?? places[index].address ?? '';

        return ListTile(
          title: Text(places[index].name),
          subtitle: Text(address),
          leading: query.isEmpty
              ? const Icon(Icons.access_time)
              : const Icon(Icons.place_outlined),
          trailing: query.isEmpty
              ? IconButton(
                  onPressed: () => viewModel
                      .onEvent(SearchEvent.deleteHistory(places[index])),
                  icon: Icon(Icons.delete_outline,
                      color: Theme.of(context).colorScheme.error))
              : null,
          onTap: () {
            result = places[index];
            close(context, places[index]);
          },
        );
      },
    );
  }
}
