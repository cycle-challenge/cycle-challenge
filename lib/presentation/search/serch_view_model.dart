import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_event.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_state.dart';

class SearchViewModel with ChangeNotifier {
  final PlaceRepository _placeRepository;
  final StreamController<MainUiEvent> _mainEventController;

  SearchState _state = SearchState();
  SearchState get state => _state;

  SearchViewModel(this._placeRepository, this._mainEventController) {
    _ontInitState();
  }

  void onEvent(SearchEvent event) {
    event.when(
        search: _onSearch,
        addHistory: _onAddHistory,
        deleteHistory: _onDeleteHistory,
        initState: _ontInitState);
  }

  void _ontInitState() async {
    final result = await _placeRepository.getSearchHistory();

    result.when(
        success: (places) {
          _state = SearchState(history: places);
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onSearch(String query) async {
    if (query.length < 2 || _state.query == query) return;
    _state = _state.copyWith(query: query);

    final result = await _placeRepository.search(query);

    result.when(
        success: (places) {
          _state = _state.copyWith(places: places);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onAddHistory(Place? place) async {
    if (place == null) return;

    final result = await _placeRepository.addSearchHistory(place);

    result.when(
        success: (places) {
          _state = _state.copyWith(history: places);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onDeleteHistory(Place? place) async {
    if (place == null) return;

    final result = await _placeRepository.deleteSearchHistory(place);

    result.when(
        success: (places) {
          _state = _state.copyWith(history: places);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }
}
