import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';

part 'map_data_state.freezed.dart';


@freezed
class MapDataState with _$MapDataState {
  factory MapDataState({
    @Default([]) List<Travel> travels,
    @Default({}) Map<String, PlaceDetail> placeDetails
  }) = _MapDataState;

}