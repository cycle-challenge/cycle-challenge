
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';

part 'travel_ui_event.freezed.dart';

@freezed
abstract class TravelUiEvent with _$TravelUiEvent {
  const factory TravelUiEvent.moveArea(VisitArea area) = _MoveArea;
}