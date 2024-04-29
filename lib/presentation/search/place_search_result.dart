
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';

part 'place_search_result.freezed.dart';


@freezed
class PlaceSearchResult with _$PlaceSearchResult {
  factory PlaceSearchResult({
    required PlaceDetail detail,
    required PlaceModel? place
  }) = _PlaceSearchResult;
}