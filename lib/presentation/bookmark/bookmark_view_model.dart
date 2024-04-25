import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/repositories/place_repository.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_state.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_ui_event.dart';

class BookmarkViewModel with ChangeNotifier {
  final PlaceRepository placeRepository;
  final UseCases useCases;

  final StreamController<BookmarkUiEvent> _eventController =
      StreamController.broadcast();
  Stream<BookmarkUiEvent> get stream => _eventController.stream;

  BookmarkState _state = BookmarkState();
  BookmarkState get state => _state;

  BookmarkViewModel(this.placeRepository, this.useCases) {
    _onInit();
  }

  void _onInit() {
    placeRepository.getBookmarkedPlace().then((result) => {
          result.when(
              success: (places) {
                _state = _state.copyWith(places: places);
                notifyListeners();
              },
              error: (error) => error.when(
                  targetError: (_, __) {},
                  error: (_, message) => _eventController
                      .add(BookmarkUiEvent.showSnackbar(message))))
        });
  }

  void onEvent(BookmarkEvent event) =>
      event.when(startEdit: _onStartEdit, endEdit: _onEndEdit, deletePlace: _onDeletePlace);

  void _onStartEdit() {
    _state = _state.copyWith(isEditing: true);
    notifyListeners();
  }

  void _onEndEdit() {
    _state = _state.copyWith(isEditing: false);
    notifyListeners();
  }

  void _onDeletePlace(PlaceModel place) async {
    final result = await useCases.deletePlaceBookmarkUseCase(place.id);

    result.when(
        success: (_) {
          _onInit();
          _eventController.add(BookmarkUiEvent.showSnackbar(
              '${place.name}이(가) 북마크에서 제거 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _eventController.add(BookmarkUiEvent.showSnackbar(message))));
  }
}
