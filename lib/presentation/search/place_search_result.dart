
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'place_search_result.freezed.dart';


@freezed
class PlaceSearchResult with _$PlaceSearchResult {
  factory PlaceSearchResult({
    required PlaceDetail detail,
    required Place? place
  }) = _PlaceSearchResult;
}