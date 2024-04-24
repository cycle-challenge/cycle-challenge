import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_data_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_event.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_filter_data_state.dart';
import 'package:yeohaeng_ttukttak/presentation/map/states/map_state.dart';

class MapViewModel with ChangeNotifier {
  MapState _state = MapState();

  MapDataState _dataState = MapDataState();
  MapDataState get dataState => _dataState;

  MapFilterDataState _filterDataState = MapFilterDataState(
      placeFilter: PlaceFilter(), travelFilter: TravelFilter());

  MapBottomSheetState _bottomSheetState = MapBottomSheetState();

  final StreamController<MapUIEvent> _eventController =
      StreamController.broadcast();
  Stream<MapUIEvent> get stream => _eventController.stream;

  final UseCases useCases;

  MapViewModel(this.useCases) {
    useCases.loadMarker().then((result) => result.when(
        success: (data) {
          final (makrerIcon, selectedMarkerIcon) = data;
          _state = _state.copyWith(
              markerIcon: makrerIcon, selectedMarkerIcon: selectedMarkerIcon);
          notifyListeners();
        },
        error: (message) =>
            _eventController.add(MapUIEvent.showSnackBar(message))));

    _onFindBookmarks();
  }

  // getter
  MapState get state => _state;
  MapFilterDataState get filterState => _filterDataState;
  MapBottomSheetState get bottomSheetState => _bottomSheetState;

  void onEvent(MapEvent event) {
    event.when(
        findNearbyPlace: _findNearbyPlace,
        selectPlace: _selectPlace,
        initBottomSheet: _initBottomSheet,
        changeNavigation: _changeNavigation,
        changePosition: _changePosition,
        showSearchButton: _showSearchButton,
        expandBottomSheet: _expandBottomSheet,
        contractBottomSheet: _contractBottomSheet,
        setCanViewScrollUp: _setCanViewScrollUp,
        stopBottomSheetAnimation: _stopBottomSheetAnimation,
        changeToMyPosition: _changeToMyPosition,
        updateFilter: _updateFilter,
        addPlaceBookmark: _onAddPlaceBookmark,
        deletePlaceBookmark: _onDeletePlaceBookmark,
        addTravelBookmark: _onAddTravelBookmark,
        deleteTravelBookmark: _onDeleteTravelBookmark);
  }

  void _onDeletePlaceBookmark(int id) async {
    final result = await useCases.deletePlaceBookmarkUseCase(id);

    result.when(
        success: (bookmarks) {
          _dataState = _dataState.copyWith(placeBookmarks: bookmarks);
          notifyListeners();

          final bookmarkedPlace =
              _dataState.places.where((elm) => elm.id == id).firstOrNull;

          if (bookmarkedPlace == null) return;

          _eventController.add(MapUIEvent.showSnackBar(
              '${bookmarkedPlace.name}이(가) 북마크에서 제거 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _eventController.add(MapUIEvent.showSnackBar(message))));
  }

  void _onAddPlaceBookmark(int id) async {
    final result = await useCases.addPlaceBookmarkUseCase(id);

    result.when(
        success: (bookmarks) {
          _dataState = _dataState.copyWith(placeBookmarks: bookmarks);
          notifyListeners();

          final bookmarkedPlace =
              _dataState.places.where((elm) => elm.id == id).firstOrNull;

          if (bookmarkedPlace == null) return;

          _eventController.add(MapUIEvent.showSnackBar(
              '${bookmarkedPlace.name}이(가) 북마크에 추가 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _eventController.add(MapUIEvent.showSnackBar(message))));
  }

  void _onDeleteTravelBookmark(int id) async {
    final result = await useCases.deleteTravelBookmarkUseCase(id);

    result.when(
        success: (bookmarks) {
          _dataState = _dataState.copyWith(travelBookmarks: bookmarks);
          notifyListeners();

          final bookmarkedTravel =
              _dataState.travels.where((elm) => elm.id == id).firstOrNull;

          if (bookmarkedTravel == null) return;

          _eventController.add(MapUIEvent.showSnackBar(
              '${bookmarkedTravel.name}이(가) 북마크에서 제거 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _eventController.add(MapUIEvent.showSnackBar(message))));
  }

  void _onAddTravelBookmark(int id) async {
    final result = await useCases.addTravelBookmarkUseCase(id);

    result.when(
        success: (bookmarks) {
          _dataState = _dataState.copyWith(travelBookmarks: bookmarks);
          notifyListeners();

          final bookmarkedTravel =
              _dataState.travels.where((elm) => elm.id == id).firstOrNull;

          if (bookmarkedTravel == null) return;

          _eventController.add(MapUIEvent.showSnackBar(
              '${bookmarkedTravel.name}이(가) 북마크에서 추가 되었습니다.'));
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _eventController.add(MapUIEvent.showSnackBar(message))));
  }

  void _onFindBookmarks() async {
    final result = await useCases.findBookmarksUseCase();

    result.when(
        success: (bookmarks) {
          final (placeBookmarks, travelBookmarks) = bookmarks;
          _dataState = _dataState.copyWith(placeBookmarks: placeBookmarks, travelBookmarks: travelBookmarks);
          notifyListeners();
        },
        error: (error) => error.when(
            targetError: (_, __) {},
            error: (_, message) =>
                _eventController.add(MapUIEvent.showSnackBar(message))));
  }

  void _findNearbyPlace() async {
    _state = _state.copyWith(isShownSearchButton: false);

    final result =
        await useCases.getNearbyPlaces(_state.latitude, _state.longitude);

    result.when(success: (result) {
      final (places, travels) = result;
      _dataState = _dataState.copyWith(places: places, travels: travels);
      _filter();
    }, error: (message) {
      _eventController.add(MapUIEvent.showSnackBar(message));
    });
  }

  void _selectPlace(PlaceModel? place) {
    _filterDataState = _filterDataState.copyWith(selectedPlace: place);
    notifyListeners();
  }

  void _filter() {
    List<PlaceModel> places = _dataState.places;
    List<TravelModel> travels = _dataState.travels;

    final placeFilter = _filterDataState.placeFilter;
    final travelFilter = _filterDataState.travelFilter;

    final filteredPlaces = placeFilter
        .apply(places)
        .where((place) => travelFilter.apply(place.travels).isNotEmpty)
        .toList();

    final filteredTravels = travelFilter.apply(travels);

    _filterDataState = _filterDataState.copyWith(
        filteredPlaces: filteredPlaces, filteredTravels: filteredTravels);

    notifyListeners();
  }

  void _initBottomSheet(double? maxHeight) {
    if (maxHeight == null) {
      _bottomSheetState =
          MapBottomSheetState(maxHeight: _bottomSheetState.maxHeight);
      return;
    }
    _bottomSheetState = _bottomSheetState.copyWith(maxHeight: maxHeight);
  }

  void _changeNavigation(int index) {
    _state = _state.copyWith(navigationIndex: index);
    notifyListeners();
  }

  void _changePosition(CameraPosition position) {
    double latitude = position.target.latitude;
    double longitude = position.target.longitude;

    _state = _state.copyWith(latitude: latitude, longitude: longitude);
  }

  void _showSearchButton() {
    _state = _state.copyWith(isShownSearchButton: true);
    notifyListeners();
  }

  void _expandBottomSheet() {
    _bottomSheetState = _bottomSheetState.copyWith(
        height: _bottomSheetState.maxHeight,
        isAnimating: true,
        isExpanded: true);
    notifyListeners();
  }

  void _contractBottomSheet() {
    _bottomSheetState = _bottomSheetState.copyWith(
        height: _bottomSheetState.minHeight,
        isAnimating: true,
        isExpanded: false);
    notifyListeners();
  }

  void _setCanViewScrollUp(bool value) {
    _bottomSheetState = _bottomSheetState.copyWith(canViewScrollUp: value);
    notifyListeners();
  }

  void _stopBottomSheetAnimation() {
    _bottomSheetState = _bottomSheetState.copyWith(isAnimating: false);
    notifyListeners();
  }

  void _changeToMyPosition() async {
    final result = await useCases.getMyLocation();

    result.when(success: (data) {
      final (latitude, longitude) = data;
      _state = _state.copyWith(latitude: latitude, longitude: longitude);
      _eventController.add(MapUIEvent.moveCamera(latitude, longitude));
    }, error: (message) {
      _eventController.add(MapUIEvent.showSnackBar(message));
    });
  }

  void _updateFilter(Filter filter) {
    if (filter is PlaceFilter) {
      _filterDataState = _filterDataState.copyWith(placeFilter: filter);
    } else if (filter is TravelFilter) {
      _filterDataState = _filterDataState.copyWith(travelFilter: filter);
    }
    _filter();
    notifyListeners();
  }
}
