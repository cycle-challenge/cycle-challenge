import 'dart:async';

import 'package:dart_jts/dart_jts.dart';
import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/data/repositories/travel_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_state.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';

class TravelCreateViewModel with ChangeNotifier {
  static final GeometryFactory geometryFactory =
      GeometryFactory.withPrecisionModelSrid(PrecisionModel(), 4326);

  final TravelRepository _travelRepository;

  final UseCases useCases;

  final StreamController<TravelCreateUiEvent> _eventController =
      StreamController.broadcast();
  Stream<TravelCreateUiEvent> get stream => _eventController.stream;

  final StreamController<MainUiEvent> _mainEventController;

  late TravelCreateState _state;
  TravelCreateState get state => _state;

  TravelCreateViewModel(
      this._mainEventController, this._travelRepository, this.useCases,
      {required Travel travel}) {
    _state = TravelCreateState(travel: travel);
  }

  void onEvent(TravelCreateEvent event) => event.when(
      changePanelHeight: _onChangePanelHeight,
      setTravelDates: _onSetTravelDates,
      reorderVisit: _onReorderVisit,
      addVisit: _onAddVisit,
      deleteVisit: _onDeleteVisit,
      complete: _onComplete,
      edit: _onEdit,
      moveCamera: _onMoveCamera,
      initCamera: _onInitCamera);

  void _onEdit(Travel travel) {
    _state = _state.copyWith(travel: travel);
    notifyListeners();
  }

  void _onComplete() async {
    final result = await useCases.createTravelUseCase(
        _state.travel, _state.travelDates, _state.group);

    result.when(
        success: (travel) {
          _state = _state.copyWith(travel: travel);

          _eventController.add(TravelCreateUiEvent.complete(
            _state.travel,
              _state.travelDates!
          ));
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message!)));
  }

  void _onInitCamera() async {
    _state = _state.copyWith(isCameraMoved: false);
    notifyListeners();

    if (_state.visits.isEmpty) {
      final result = await useCases.getMyLocation();

      result.when(
          success: (location) {
            final (lat, lon) = location;

            _eventController.add(TravelCreateUiEvent.moveArea(VisitArea(
                swLat: lat, swLon: lon, neLat: lat + 0.03, neLon: lon + 0.03)));
          },
          error: (message) =>
              _mainEventController.add(MainUiEvent.showSnackbar(message)));
      return;
    }

    if (_state.entireArea != null) {
      _eventController.add(TravelCreateUiEvent.moveArea(_state.entireArea!));
    }
    _createBound();
  }

  void _onMoveCamera() {
    if (_state.isCameraMoved) return;

    _state = _state.copyWith(isCameraMoved: true);
    notifyListeners();
  }

  void _onAddVisit(List<Place> places) {
    final visits = places.map((place) => Visit(place: place)).toList();
    _state = _state.copyWith(visits: List.of(_state.visits)..addAll(visits));
    _createBound();
    _groupVisits();
  }

  void _onDeleteVisit(int index) {
    final List<TravelGroupItem> newGroup = List.from(_state.group)
      ..removeAt(index);

    final List<Visit> newVisits = [];
    newGroup.forEach((element) =>
        element.whenOrNull(visit: (visit) => newVisits.add(visit)));

    _state = _state.copyWith(visits: newVisits);
    _createBound();
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

  void _createBound() {
    final Envelope entire = Envelope.empty();

    final Map<Visit, Envelope> points = {};

    _state.visits.forEach((visit) {
      final point = geometryFactory
          .createPoint(Coordinate(visit.place.longitude, visit.place.latitude));
      points[visit] = point.buffer(0.01).getEnvelopeInternal();
    });

    // 전체 영역을 계산
    points.values.forEach((point) => entire.expandToIncludeEnvelope(point));

    final List<Visit> results = [];

    // 각 관광지를 순회하며 부분 영역을 계산
    points.entries.forEach((entry) {
      final visit = entry.key;
      final point = entry.value;

      final Envelope partial = Envelope.empty();

      partial.expandToIncludeEnvelope(point);

      // 다른 관광지가 부분 영역에 포함되는지 검사하고, 참일 경우 부분 영역에 포함
      points.values
          .where((other) => partial.intersectsEnvelope(other))
          .forEach((other) => partial.expandToIncludeEnvelope(other));

      results.add(visit.copyWith(area: VisitArea.fromEnvelop(partial)));
    });

    _state = _state.copyWith(
        visits: results, entireArea: VisitArea.fromEnvelop(entire));

    _eventController.add(TravelCreateUiEvent.moveArea(_state.entireArea!));
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
