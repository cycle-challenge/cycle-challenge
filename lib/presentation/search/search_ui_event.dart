
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'search_ui_event.freezed.dart';

@freezed
abstract class SearchUiEvent with _$SearchUiEvent {
  const factory SearchUiEvent.searchComplete(Place place) = _SearchComplete;
}