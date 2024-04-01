import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_detail_event.freezed.dart';

@freezed
abstract class PlaceDetailEvent with _$PlaceDetailEvent {
  const factory PlaceDetailEvent.load(String googlePlaceID) =
      LoadPlaceDetailEvent;
  const factory PlaceDetailEvent.toggleBusinessHourExpanded() =
      ToggleBusinessHourExpandedEvent;
  const factory PlaceDetailEvent.fetchImage(int placeID, int page, int pageSize) =
      FetchPlaceImageEvent;
}
