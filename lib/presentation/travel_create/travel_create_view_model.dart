import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_state.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';

class TravelCreateViewModel with ChangeNotifier {
  final StreamController<MainUiEvent> _mainEventController;
  late TravelCreateState _state;
  TravelCreateState get state => _state;

  TravelCreateViewModel(this._mainEventController, {required Travel travel}) {
    _state = TravelCreateState(travel: travel);
  }

  void onEvent(TravelCreateEvent event) => event.when(
      changePanelHeight: _onChangePanelHeight,
      setTravelDates: _onSetTravelDates,
      reorderVisit: _onReorderVisit,
      addVisit: _onAddVisit,
      deleteVisit: _onDeleteVisit,
      complete: _onComplete, edit:_onEdit);

  void _onEdit(Travel travel) {
    _state = _state.copyWith(travel: travel);
    notifyListeners();
  }

  void _onComplete() {
    if (state.visits.isEmpty) {
      return _mainEventController
          .add(const MainUiEvent.showSnackbar('최소 한 개 이상의 관광지를 선택해야 합니다.'));
    }

    for (Visit visit in state.visits) {
      if (visit.dayOfTravel == null) {
        return _mainEventController
            .add(const MainUiEvent.showSnackbar('들릴 관광지에 날짜를 선택해 주세요.'));
      }
    }
  }

  void _onAddVisit(List<Place> places) {
    final visits = places.map((place) => Visit(place: place)).toList();
    _state = _state.copyWith(visits: List.of(_state.visits)..addAll(visits));
    _groupVisits();
  }

  void _onDeleteVisit(int index) {
    final List<TravelGroupItem> newGroup = List.from(_state.group)
      ..removeAt(index);

    final List<Visit> newVisits = [];
    newGroup.forEach((element) =>
        element.whenOrNull(visit: (visit) => newVisits.add(visit)));

    _state = _state.copyWith(visits: newVisits);
    _groupVisits();
  }

  void _onChangePanelHeight(double height) {
    _state = _state.copyWith(panelHeight: height);
    notifyListeners();
  }

  void _onSetTravelDates(DateTimeRange? travelDates) {
    _state = _state.copyWith(travelDates: travelDates);
    _groupVisits();
  }

  void _onReorderVisit(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) newIndex -= 1;

    final List<TravelGroupItem> newGroup = List.from(_state.group)
      ..removeAt(oldIndex)
      ..insert(newIndex, _state.group[oldIndex]);

    final List<Visit> newVisits = [];
    int dayOfTravel = -1;

    newGroup.forEach((element) => element.when(
        label: (_) => dayOfTravel++,
        visit: (visit) =>
            newVisits.add(visit.copyWith(dayOfTravel: dayOfTravel))));

    _state = _state.copyWith(visits: newVisits);
    _groupVisits();
  }

  void _groupVisits() {
    int? days = _state.travelDates?.duration.inDays;
    final Map<int?, List<Visit>> groupedVisits = {
      for (var i = 0; i <= (days ?? -1); i++) i: [],
    };

    _state.visits.forEach((visit) {
      groupedVisits.putIfAbsent(visit.dayOfTravel, () => []).add(visit);
    });

    // 최종 데이터 리스트 생성
    final List<TravelGroupItem> data = [];
    bool addedUncategorized = false;

    groupedVisits.entries.forEach((entry) {
      if (entry.key != null &&
          _state.travelDates != null &&
          entry.key! <= days!) {
        data.add(TravelGroupItem.label(
            _state.travelDates!.start.add(Duration(days: entry.key!))));
      } else if (!addedUncategorized) {
        data.add(const TravelGroupItem.label(null));
        addedUncategorized = true;
      }

      data.addAll(entry.value.map(TravelGroupItem.visit));
    });

    // 상태 업데이트 및 리스너 통지
    _state = _state.copyWith(group: data);
    notifyListeners();
  }
}
