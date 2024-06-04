
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  factory BookmarkState({
    @Default([]) List<Place> places,
    @Default([]) List<Travel> travels,
    @Default({}) Set<int> placeIdSet,
    @Default({}) Set<int> travelIdSet,
    @Default(false) bool isEditing
  }) = _BookmarkState;

}