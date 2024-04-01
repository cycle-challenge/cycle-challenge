import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';

part 'place_detail_event.freezed.dart';

@freezed
abstract class PlaceDetailEvent with _$PlaceDetailEvent {
  const factory PlaceDetailEvent.load(String googlePlaceID) =
      LoadPlaceDetailEvent;
  const factory PlaceDetailEvent.toggleBusinessHourExpanded() =
      ToggleBusinessHourExpandedEvent;
  const factory PlaceDetailEvent.fetchImage(int placeID, int page, int pageSize) =
      FetchPlaceImageEvent;
  const factory PlaceDetailEvent.callPhone(String? phoneNumber) = CallPhoneEvent;
  const factory PlaceDetailEvent.copyText(String? text) = CopyTextEvent;
  const factory PlaceDetailEvent.launchURL(String? url) = LaunchURL;
}
