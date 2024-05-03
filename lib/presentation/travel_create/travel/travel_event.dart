import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_event.freezed.dart';

@freezed
abstract class TravelEvent with _$TravelEvent {
  const factory TravelEvent.setPanelHeight(double height) = _SetPanelHeight;
  const factory TravelEvent.setIsCameraMoved(bool isCameraMoved) = _SetIsCameraMoving;
  const factory TravelEvent.initCamera() = _InitCamera;
  const factory TravelEvent.scrollVisit(int index) = _ScrollVisit;
  const factory TravelEvent.setCanPanelScrollUp(bool canPanelScrollUp) = _SetCanPanelScrollUp;
  const factory TravelEvent.setIsViewExpanded(bool isViewExpanded) = _SetIsViewExpanded;
}