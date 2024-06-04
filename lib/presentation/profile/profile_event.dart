
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = _Init;
}