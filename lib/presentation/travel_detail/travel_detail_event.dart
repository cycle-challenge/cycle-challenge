import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_detail_event.freezed.dart';

@freezed
abstract class TravelDetailEvent with _$TravelDetailEvent {
  const factory TravelDetailEvent.scrollVisit(int index) = ScrollVisitEvent;
  const factory TravelDetailEvent.changeVisit(int index) = ChangeVisitEvent;
  const factory TravelDetailEvent.nextDayOfTravel() = NextDayOfTravelEvent;
  const factory TravelDetailEvent.prevDayOfTravel() = PrevDayOfTravelEvent;
  const factory TravelDetailEvent.toggleMapView() = ToogleMapViewEvent;
  const factory TravelDetailEvent.changePanelHeight(double height) =
      ChangePanelHeightEvent;
  const factory TravelDetailEvent.showInitViewButton() = ShowInitViewButtonEvent;
  const factory TravelDetailEvent.initView() = initViewEvent;
}
