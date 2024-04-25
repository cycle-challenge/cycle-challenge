import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_ui_event.freezed.dart';

@freezed
abstract class MapUIEvent with _$MapUIEvent {
  const factory MapUIEvent.showSnackBar(String message) = ShowSnackBarUIEvent;
  const factory MapUIEvent.moveCamera(double latitude, double longitude) =
      MoveCameraEvent;
}
