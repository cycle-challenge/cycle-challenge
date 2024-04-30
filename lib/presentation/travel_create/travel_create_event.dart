
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_create_event.freezed.dart';

@freezed
abstract class TravelCreateEvent with _$TravelCreateEvent {
  const factory TravelCreateEvent.changePanelHeight(double height) =
  TravelCreateChangePanelHeightEvent;
  const factory TravelCreateEvent.setTravelDates(DateTimeRange? travelDates) =
  TravelCreateSetTravelDatesEvent;
  const factory TravelCreateEvent.reorderVisit(int oldIndex, int newIndex) =
  TravelReorderVisitEvent;
}