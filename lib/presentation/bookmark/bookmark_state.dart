
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';

part 'bookmark_state.freezed.dart';

@freezed
class BookmarkState with _$BookmarkState {
  factory BookmarkState({
    @Default([]) List<PlaceModel> places,
    @Default(false) bool isEditing
  }) = _BookmarkState;

}