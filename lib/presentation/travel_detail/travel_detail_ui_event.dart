import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/visit/bound.dart';

part 'travel_detail_ui_event.freezed.dart';

@freezed
abstract class TravelDetailUIEvent with _$TravelDetailUIEvent {
  const factory TravelDetailUIEvent.moveBound(Bound bound, int zoomLevel) = moveBoundEvent;
}