
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  factory BookmarkState({
    @Default([]) List<PlaceModel> places,
    @Default([]) List<TravelModel> travels,
    @Default({}) Set<int> placeIdSet,
    @Default({}) Set<int> travelIdSet,
    @Default(false) bool isEditing
  }) = _BookmarkState;

}