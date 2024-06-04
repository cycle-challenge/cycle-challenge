import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_event.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_state.dart';
import 'package:yeohaeng_ttukttak/presentation/search/search_ui_event.dart';

class SearchViewModel with ChangeNotifier {
  final PlaceRepository _placeRepository;
  final StreamController<SearchUiEvent> _eventController =
      StreamController.broadcast();
  final StreamController<MainUiEvent> _mainEventController;

  Stream<SearchUiEvent> get stream => _eventController.stream;
  SearchState _state = SearchState();
  SearchState get state => _state;

  SearchViewModel(this._placeRepository, this._mainEventController) {
    _onInitState();
  }

  void onEvent(SearchEvent event) {
    event.when(
        autoComplete: _onAutoComplete,
        search: _onSearch,
        deleteHistory: _onDeleteHistory,
        initState: _onInitState);
  }

  void _onInitState() async {
    final result = await _placeRepository.getSearchHistory();

    result.when(
        success: (places) {
          _state = SearchState(history: places);
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onAutoComplete(String query) async {
    if (query.length < 2 || _state.query == query) return;

    _state = _state.copyWith(query: query);

    final result = await _placeRepository.autoComplete(query);

    result.when(
        success: (places) {
          _state = _state.copyWith(places: places);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onSearch(PlaceSuggestion? suggestion) async {
    if (suggestion == null) return;



    final result = await _placeRepository.find(suggestion.placeId);

    result.when(success: (place) async {
        // 검색 기록 추가
        final historyResult = await _placeRepository.addSearchHistory(suggestion);
        historyResult.when(
            success: (suggestions) {
              _state = _state.copyWith(history: suggestions);
              notifyListeners();
            },
            error: (message) =>
                _mainEventController.add(MainUiEvent.showSnackbar(message)));

        _eventController.add(SearchUiEvent.searchComplete(place));

    }, error: (message) =>
        _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onDeleteHistory(PlaceSuggestion? place) async {
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
