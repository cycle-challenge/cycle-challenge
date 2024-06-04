import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';

part 'travel_event.freezed.dart';

@freezed
abstract class TravelEvent with _$TravelEvent {
  const factory TravelEvent.setPanelHeight(double height) = _SetPanelHeight;
  const factory TravelEvent.setIsCameraMoved(bool isCameraMoved) = _SetIsCameraMoving;
  const factory TravelEvent.initCamera() = _InitCamera;
  const factory TravelEvent.scrollVisit(int index) = _ScrollVisit;
  const factory TravelEvent.setCanPanelScrollUp(bool canPanelScrollUp) = _SetCanPanelScrollUp;
  const factory TravelEvent.setIsViewExpanded(bool isViewExpanded) = _SetIsViewExpanded;

  const factory TravelEvent.editStart() = _EditStart;
  const factory TravelEvent.edit(Travel travel) = _Edit;
  const factory TravelEvent.editComplete() = _EditComplete;
  const factory TravelEvent.setTravelDate(DateTimeRange travelDate) = _SetTravelDate;

  const factory TravelEvent.addVisit(List<Place> places) = _AddVisit;
  const factory TravelEvent.deleteVisit(int index) = _DeleteVisit;
  const factory TravelEvent.reorderVisit(int oldIndex, int newIndex) =
  _ReorderVisit;
}