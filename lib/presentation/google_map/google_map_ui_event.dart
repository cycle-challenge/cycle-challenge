
import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_map_ui_event.freezed.dart';

@freezed
abstract class GoogleMapUiEvent with _$GoogleMapUiEvent {
  const factory GoogleMapUiEvent.changeMapStyle(String style) = _ChangeMapStyle;
}