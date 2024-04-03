import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';

part 'place_detail_state.freezed.dart';

@freezed
class PlaceDetailState with _$PlaceDetailState {
  factory PlaceDetailState(
      {required bool isBusinessHourExpanded,
      required PlaceDetail? placeDetail,
      required List<ImageModel> placeImages}) = _PlaceDetailState;
}
