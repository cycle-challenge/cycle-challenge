
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel_group_item.dart';

part 'travel_create_state.freezed.dart';

@freezed
class TravelCreateState with _$TravelCreateState {
  factory TravelCreateState({
    @Default(0.0) double panelHeight,
    @Default([]) List<Visit> visits,
    @Default([]) List<TravelGroupItem> group,
    DateTimeRange? travelDates
  }) = _TravelCreateState;
}