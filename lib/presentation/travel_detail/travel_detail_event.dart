import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_detail_event.freezed.dart';

@freezed
abstract class TravelDetailEvent with _$TravelDetailEvent {
  const factory TravelDetailEvent.changeVisit(int index) = ChangeVisitEvent;
}