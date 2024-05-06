import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/components/travel_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/travel_state.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/visit_display_type.dart';

class TravelViewModel with ChangeNotifier {
  final UseCases useCases;

  final StreamController<MainUiEvent> _mainEventController;

  final StreamController<TravelUiEvent> _eventController =
      StreamController.broadcast();
  Stream<TravelUiEvent> get stream => _eventController.stream;

  late TravelState _state;
  TravelState get state => _state;

  TravelViewModel(this.useCases, this._mainEventController,
      {required Travel travel, bool isModifying = false}) {
    _state = TravelState(travel: travel, isModifying: isModifying);

    // 여행 ID가 없는 경우 생성 모드로 변경
    if (travel.id == null) {
      useCases.createTravelUseCase(travel).then((result) => result.when(
          success: (travel) {
            _state = _state.copyWith(travel: travel, isModifying: true);
            return notifyListeners();
          },
          error: (message) =>
              _mainEventController.add(MainUiEvent.showSnackbar(message!))));
      return;
    }

    useCases.getTravelVisitsUseCase(travel.id!).then((result) => result.when(
        success: (visits) {
          final int minDayOfTravel =
              visits.map((e) => e.dayOfTravel).whereType<int>().reduce(min);

          _init(visits
              .map((e) =>
                  e.copyWith(dayOfTravel: e.dayOfTravel! - minDayOfTravel))
              .toList());
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void onEvent(TravelEvent event) => event.when(
      setPanelHeight: _onSetPanelHeight,
      setIsCameraMoved: _onSetIsCameraMoved,
      initCamera: _onInitCamera,
      scrollVisit: _onScrollVisit,
      setCanPanelScrollUp: _onSetCanPanelScrollUp,
      setIsViewExpanded: _onSetIsViewExpanded,
      addVisit: _onAddVisit,
      deleteVisit: _onDeleteVisit,
      reorderVisit: _onReorderVisit,
      setTravelDate: _onSetTravelDates,
      editComplete: _onEditComplete);

  void _onEditComplete() async {
    final result =
        await useCases.modifyTravelUseCase(_state.travel, _state.items);

    result.when(
        success: (travel) {
          _state = _state.copyWith(travel: travel, isModifying: false);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message!)));
  }

  void _onSetTravelDates(DateTimeRange travelDate) {
    _state = _state.copyWith(
        travel: state.travel
            .copyWith(startedOn: travelDate.start, endedOn: travelDate.end));

    final visits = List.of(_state.items)
        .map((e) => e.whenOrNull(item: (visit) => visit))
        .whereType<Visit>()
        .toList();

    _init(visits);
  }

  void _onAddVisit(List<Place> places) async {
    final visits = places.map((place) => Visit(place: place)).toList();

    final result =
        await useCases.createVisitsUseCase(_state.travel.id!, visits);

    result.when(
        success: (visits) => _init(visits),
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message!)));
  }

  void _onDeleteVisit(int index) {
    final newItems = List.of(_state.items)..removeAt(index);

    final visits = newItems
        .map((e) => e.whenOrNull(item: (visit) => visit))
        .whereType<Visit>()
        .toList();

    _init(visits);
  }

  void _onReorderVisit(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) newIndex -= 1;

    final newItems = List.from(_state.items)
      ..removeAt(oldIndex)
      ..insert(newIndex, _state.items[oldIndex]);

    int? dayOfTravel = -1;

    final visits = newItems
        .map((item) => item.when(
            label: (datetime) {
              if (datetime == null) dayOfTravel = null;
              if (datetime != null && dayOfTravel != null) {
                return dayOfTravel = dayOfTravel! + 1;
              }
            },
            item: (visit) => visit.copyWith(dayOfTravel: dayOfTravel)))
        .whereType<Visit>()
        .toList();

    _init(visits);
  }

  void _onSetCanPanelScrollUp(bool canPanelScrollUp) {
    if (_state.canPanelScrollUp == canPanelScrollUp) return;
    _state = _state.copyWith(canPanelScrollUp: canPanelScrollUp);
    notifyListeners();
  }

  void _onSetIsViewExpanded(bool isViewExpanded) {
    if (state.isViewExpanded == isViewExpanded) return;

    _state = _state.copyWith(isViewExpanded: isViewExpanded);
    notifyListeners();

    _eventController.add(TravelUiEvent.moveArea(
        _state.isViewExpanded || _state.isModifying
            ? _state.entireArea!
            : _state.partialAreas[_state.visitIndex]));
  }

  void _onSetIsCameraMoved(bool isCameraMoved) {
    if (_state.isCameraMoved == isCameraMoved) return;

    _state = _state.copyWith(isCameraMoved: isCameraMoved);
    notifyListeners();
  }

  void _onSetPanelHeight(double height) {
    _state = _state.copyWith(panelHeight: height);
    notifyListeners();
  }

  void _onScrollVisit(int itemIndex) {
    if (_state.items.isEmpty) return;

    int labelCount = _state.items
        .sublist(0, itemIndex + 1) // 현재 인덱스까지 리스트 자르기
        .map((e) => e.whenOrNull(label: (e) => 0)) // item 타입은 null을 할당
        .whereType<int>()
        .length;

    int visitIndex = max(itemIndex - labelCount, 0);

    if (_state.visitIndex == visitIndex) return;
    _state = _state.copyWith(visitIndex: visitIndex);
    notifyListeners();

    _eventController.add(TravelUiEvent.moveArea(
        (_state.isViewExpanded || _state.isModifying)
            ? _state.entireArea!
            : _state.partialAreas[_state.visitIndex]));
  }

  void _init(List<Visit> visits) {
    List<VisitDisplayType> items = [];

    final startedOn = state.travel.startedOn;
    final endedOn = state.travel.endedOn;

    final int days = (startedOn != null && endedOn != null)
        ? endedOn.difference(startedOn).inDays + 1
        : 0;

    final Map<int?, List<Visit>> group = {for (var i = 0; i < days; i++) i: []};

    visits.forEach((visit) {
      group.putIfAbsent(visit.dayOfTravel, () => []).add(visit);
    });

    group.entries.forEach((entry) {
      final index = entry.key;

      if (index != null && startedOn != null) {
        items.add(VisitDisplayType.label(startedOn.add(Duration(days: index))));
      }

      if (index == null) {
        items.add(const VisitDisplayType.label(null));
      }

      items.addAll(entry.value.map((e) => VisitDisplayType.item(e)));
    });

    _state = _state.copyWith(items: items);
    notifyListeners();
    _createBound();
  }

  void _onInitCamera() async {
    _state = _state.copyWith(isCameraMoved: false);
    notifyListeners();

    if (_state.items.isEmpty) {
      final result = await useCases.getMyLocation();

      result.when(
          success: (location) {
            final (lat, lon) = location;
            _eventController.add(TravelUiEvent.moveArea(VisitArea(
                swLat: lat, swLon: lon, neLat: lat + 0.03, neLon: lon + 0.03)));
          },
          error: (message) =>
              _mainEventController.add(MainUiEvent.showSnackbar(message)));
      return;
    }

    _eventController.add(TravelUiEvent.moveArea(
        _state.isViewExpanded || _state.isModifying
            ? _state.entireArea!
            : _state.partialAreas[_state.visitIndex]));
    _createBound();
  }

  void _createBound() async {
    final List<Visit> visits = state.items
        .map((e) => e.whenOrNull(item: (visit) => visit))
        .whereType<Visit>()
        .toList();

    final result = useCases.calculateBoundUseCase(visits);

    _state = _state.copyWith(
        partialAreas: result.partials, entireArea: result.entire);
  }
}
