import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';

part 'place_detail_event.freezed.dart';

@freezed
abstract class PlaceDetailEvent with _$PlaceDetailEvent {
  const factory PlaceDetailEvent.load(PlaceModel place) =
      LoadPlaceDetailEvent;
  const factory PlaceDetailEvent.toggleBusinessHourExpanded() =
      ToggleBusinessHourExpandedEvent;
  const factory PlaceDetailEvent.fetchImage(int placeID, int page, int pageSize) =
      FetchPlaceImageEvent;
  const factory PlaceDetailEvent.callPhone(String? phoneNumber) = CallPhoneEvent;
  const factory PlaceDetailEvent.copyText(String? text) = CopyTextEvent;
  const factory PlaceDetailEvent.launchURL(String? url) = LaunchURL;
}
