import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/domain/model/session.dart';
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
    // 세션이 남아 있는 경우, 아무 요청을 보내 세션을 취소
    if (_state.session != null && _state.autoCompleteCount > 0) {
      debugPrint('[SESSION_TERMINATED] ${_state.session?.token}');
      await _placeRepository.getDetail('ChIJv78qn9rDZDUR7N-SSFboGkA',
          session: _state.session);
    }

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

    // 세션이 없는 경우 신규 발급
    if (_state.session == null) {
      _state = _state.copyWith(
          session: await Session.create(), autoCompleteCount: 0);
    }

    _state = _state.copyWith(query: query);

    final result = await _placeRepository.autoComplete(query, _state.session!);

    result.when(
        success: (places) {
          _state = _state.copyWith(
              places: places, autoCompleteCount: _state.autoCompleteCount + 1);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onSearch(PlaceSuggestion? place) async {
    if (place == null) return;

    final result = await _placeRepository.getDetail(place.googlePlaceId,
        session: _state.session);

    result.when(
        success: (detail) async {
          // 세션 초기화
          debugPrint('[SESSION_COMPLETED] ${_state.session?.token}');
          _state = _state.copyWith(session: null);

          // 서버에 등록된 관광지 정보가 있는지 확인
          final placeResult =
              await _placeRepository.findByGooglePlaceId(detail.id);

          placeResult.when(
              success: (place) {
                _eventController
                    .add(SearchUiEvent.searchComplete(detail, place));
              },
              error: (error) => error.when(
                  targetError: (_, __) {},
                  error: (code, message) {
                    if (code == 'PLACE_NOT_FOUND') {
                      return _eventController
                          .add(SearchUiEvent.searchComplete(detail, null));
                    }
                    _mainEventController.add(MainUiEvent.showSnackbar(message));
                  }));

          // 검색 기록 추가
          final historyResult = await _placeRepository.addSearchHistory(place);
          historyResult.when(
              success: (places) {
                _state = _state.copyWith(history: places);
                notifyListeners();
              },
              error: (message) =>
                  _mainEventController.add(MainUiEvent.showSnackbar(message)));
        },
        error: (message) =>
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
