import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_detail.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';
import 'package:yeohaeng_ttukttak/presentation/search/place_search_result.dart';

part 'map_event.freezed.dart';

@freezed
abstract class MapEvent with _$MapEvent {
  const factory MapEvent.findNearbyPlace() = FindNearbyPlaceEvent;
  const factory MapEvent.selectPlace(PlaceModel? place) = SelectPlaceEvent;
  const factory MapEvent.selectPlaceSearchResult(PlaceSearchResult searchResult) = SelectPlaceSearchResultEvent;
  const factory MapEvent.changePosition(CameraPosition position) = ChangePositionEvent;
  const factory MapEvent.changeToMyPosition() = MoveToMyPositionEvent;
  const factory MapEvent.showSearchButton() = ShowSearchButton;
  const factory MapEvent.updateFilter(Filter filter) = UpdateFilterEvent;
}
