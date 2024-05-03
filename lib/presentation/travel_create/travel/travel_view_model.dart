import 'dart:async';
import 'dart:math';

import 'package:dart_jts/dart_jts.dart';
import 'package:flutter/cupertino.dart';
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

  TravelState _state = TravelState();
  TravelState get state => _state;

  TravelViewModel(this.useCases, this._mainEventController,
      {required int travelId,
      required DateTime startedOn,
      required DateTime endedOn,
      List<Visit>? visits}) {
    if (visits != null) {
      _init(startedOn, endedOn, visits);
      return;
    }

    useCases.getTravelVisitsUseCase(travelId).then((result) => result.when(
        success: (visits) => _init(startedOn, endedOn, visits),
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

  void onEvent(TravelEvent event) => event.when(
      setPanelHeight: _onSetPanelHeight,
      setIsCameraMoved: _onSetIsCameraMoved,
      initCamera: _onInitCamera,
      scrollVisit: _onScrollVisit,
      setCanPanelScrollUp: _onSetCanPanelScrollUp,
      setIsViewExpanded: _onSetIsViewExpanded);

  void _onSetCanPanelScrollUp(bool canPanelScrollUp) {
    if (_state.canPanelScrollUp == canPanelScrollUp) return;
    _state = _state.copyWith(canPanelScrollUp: canPanelScrollUp);
    notifyListeners();
  }

  void _onSetIsViewExpanded(bool isViewExpanded) {
    if (state.isViewExpanded == isViewExpanded) return;

    _state = _state.copyWith(isViewExpanded: isViewExpanded);
    notifyListeners();

    _eventController.add(TravelUiEvent.moveArea(_state.isViewExpanded
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
    int labelCount = _state.items
        .sublist(0, itemIndex + 1) // 현재 인덱스까지 리스트 자르기
        .map((e) => e.whenOrNull(label: (e) => 0)) // item 타입은 null을 할당
        .whereType<int>()
        .length;

    int visitIndex = max(itemIndex - labelCount, 0);

    if (_state.visitIndex == visitIndex) return;
    _state = _state.copyWith(visitIndex: visitIndex);
    notifyListeners();

    _eventController.add(TravelUiEvent.moveArea(_state.isViewExpanded
        ? _state.entireArea!
        : _state.partialAreas[_state.visitIndex]));
  }

  void _init(DateTime startedOn, DateTime endedOn, List<Visit> visits) {
    List<VisitDisplayType> items = [];

    List<DateTime> dateTimes = List.generate(
        endedOn.difference(startedOn).inDays + 1,
        (index) => startedOn.add(Duration(days: index)));

    int dateIndex = 0;

    visits.asMap().forEach((index, visit) {
      if (index == 0) {
        items.add(VisitDisplayType.label(dateTimes[dateIndex++]));
      } else if (visits[index - 1].dayOfTravel! < visit.dayOfTravel!) {
        items.add(VisitDisplayType.label(dateTimes[dateIndex++]));
      }

      return items.add(VisitDisplayType.item(visit));
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

    _eventController.add(TravelUiEvent.moveArea(_state.isViewExpanded
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
