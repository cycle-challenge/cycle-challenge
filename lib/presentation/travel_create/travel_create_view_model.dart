import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_event.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_create_state.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';

class TravelCreateViewModel with ChangeNotifier {
  TravelCreateState _state = TravelCreateState();
  TravelCreateState get state => _state;

  TravelCreateViewModel(List<Visit> visits) {
    _state = _state.copyWith(visits: visits);
    _groupVisits();
  }

  void onEvent(TravelCreateEvent event) => event.when(
      changePanelHeight: _onChangePanelHeight,
      setTravelDates: _onSetTravelDates,
      reorderVisit: _onReorderVisit);

  void _onChangePanelHeight(double height) {
    _state = _state.copyWith(panelHeight: height);
    notifyListeners();
  }

  void _onSetTravelDates(DateTimeRange? travelDates) {
    _state = _state.copyWith(travelDates: travelDates);
    _groupVisits();
  }

  void _onReorderVisit(int oldIndex, int newIndex) {
    oldIndex++;
    newIndex++;
    if (oldIndex < newIndex) newIndex -= 1;

    final List<TravelGroupItem> newGroup = List.from(_state.group)
      ..removeAt(oldIndex)
      ..insert(newIndex, _state.group[oldIndex]);

    final List<Visit> newVisits = [];
    int dayOfTravel = -1;

    newGroup.forEach((element) => element.when(
        label: (_) => dayOfTravel++,
        visit: (visit) => newVisits.add(visit.copyWith(dayOfTravel: dayOfTravel))));

    _state = _state.copyWith(visits: newVisits);
    _groupVisits();
  }

  void _groupVisits() {
    int? days = _state.travelDates?.duration.inDays;
    final Map<int?, List<Visit>> initialGroup = {};

    if (days != null) {
      List.generate(days + 1, (index) => initialGroup[index] = []);
    }

    final group = _state.visits.fold(initialGroup, (group, visit) {
      group[visit.dayOfTravel] ??= [];
      group[visit.dayOfTravel]?.add(visit);
      return group;
    });

    final List<TravelGroupItem> data = [];

    group.entries.forEach((e) {
      data.add(TravelGroupItem.label(e.key != null && _state.travelDates != null
          ? DateFormat('yyyy년 MM월 dd일')
              .format(_state.travelDates!.start.add(Duration(days: e.key!)))
          : '분류 없음'));
      data.addAll(e.value.map((e) => TravelGroupItem.visit(e)));
    });

    _state = _state.copyWith(group: data);
    notifyListeners();
  }
}
