
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';

part 'travel_create_event.freezed.dart';

@freezed
abstract class TravelCreateEvent with _$TravelCreateEvent {
  const factory TravelCreateEvent.changePanelHeight(double height) =
  TravelCreateChangePanelHeightEvent;
  const factory TravelCreateEvent.setTravelDates(DateTimeRange? travelDates) =
  TravelCreateSetTravelDatesEvent;
  const factory TravelCreateEvent.addVisit(List<Place> places) = _AddVisit;
  const factory TravelCreateEvent.deleteVisit(int index) = _DeleteVisit;
  const factory TravelCreateEvent.reorderVisit(int oldIndex, int newIndex) =
  TravelReorderVisitEvent;
}