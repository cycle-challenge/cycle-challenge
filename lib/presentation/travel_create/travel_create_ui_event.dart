import 'package:dart_jts/dart_jts.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';

part 'travel_create_ui_event.freezed.dart';

@freezed
abstract class TravelCreateUiEvent with _$TravelCreateUiEvent {
  const factory TravelCreateUiEvent.moveArea(VisitArea area) = _MoveArea;
  const factory TravelCreateUiEvent.complete(Travel travel, DateTimeRange travelDates) = _Complete;
}