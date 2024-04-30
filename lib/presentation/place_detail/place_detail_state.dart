import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yeohaeng_ttukttak/data/vo/image_model.dart';

part 'place_detail_state.freezed.dart';

@freezed
class PlaceDetailState with _$PlaceDetailState {
  factory PlaceDetailState(
      {required bool isBusinessHourExpanded,
      required List<ImageModel> placeImages}) = _PlaceDetailState;
}
