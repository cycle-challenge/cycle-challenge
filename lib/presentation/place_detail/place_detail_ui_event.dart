import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';

part 'place_detail_ui_event.freezed.dart';

@freezed
abstract class PlaceDetailUIEvent with _$PlaceDetailUIEvent {
  const factory PlaceDetailUIEvent.addImages(List<ImageModel> images, int nextPageNumber) =
      AddPlaceImageUIEvent;
  const factory PlaceDetailUIEvent.addLastImages(List<ImageModel> images) =
      AddPlaceLastImageUIEvent;
}
