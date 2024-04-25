import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_state.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';

class BookmarkViewModel with ChangeNotifier {
  final StreamController<MainUiEvent> _mainEventController;
  final UseCases useCases;


  BookmarkState _state = BookmarkState();
  BookmarkState get state => _state;

  BookmarkViewModel(this.useCases, this._mainEventController) {
    _initPlace();
    _initTravel();
  }

  void _initPlace() {
    useCases.getBookmarkedPlaceUseCase().then((result) => result.when(
        success: (places) {
          _state = _state.copyWith(
              places: places,
              placeIdSet: places.map((place) => place.id).toSet());
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void _initTravel() {
    useCases.getBookmarkedTravelUseCase().then((result) => result.when(
        success: (travels) {
          _state = _state.copyWith(
              travels: travels,
              travelIdSet: travels.map((travel) => travel.id).toSet());
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void onEvent(BookmarkEvent event) => event.when(
      startEdit: _onStartEdit,
      endEdit: _onEndEdit,
      deletePlace: _onDeletePlace,
      deleteTravel: _onDeleteTravel, addPlace: _onAddPlace, addTravel: _onAddTravel);

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
          _initPlace();
          _mainEventController.add(MainUiEvent.showSnackbar(
              '${place.name}이(가) 북마크에서 제거 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void _onDeleteTravel(TravelModel travel) async {
    final result = await useCases.deleteTravelBookmarkUseCase(travel.id);

    result.when(
        success: (_) {
          _initTravel();
          _mainEventController.add(MainUiEvent.showSnackbar(
              '${travel.name}이(가) 북마크에서 제거 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }


  void _onAddPlace(PlaceModel place) async {
    final result = await useCases.addPlaceBookmarkUseCase(place.id);

    result.when(
        success: (_) {
          _initPlace();
          _mainEventController.add(MainUiEvent.showSnackbar(
              '${place.name}이(가) 북마크에 추가 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void _onAddTravel(TravelModel travel) async {
    final result = await useCases.addTravelBookmarkUseCase(travel.id);

    result.when(
        success: (_) {
          _initTravel();
          _mainEventController.add(MainUiEvent.showSnackbar(
              '${travel.name}이(가) 북마크에 추가 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }
}
