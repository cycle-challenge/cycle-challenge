
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';

part 'search_ui_event.freezed.dart';

@freezed
abstract class SearchUiEvent with _$SearchUiEvent {
  const factory SearchUiEvent.searchComplete(PlaceDetail detail, PlaceModel? place) = SearchCompleteEvent;
}