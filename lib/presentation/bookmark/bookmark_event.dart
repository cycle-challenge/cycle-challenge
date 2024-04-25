
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';

part 'bookmark_event.freezed.dart';

@freezed
abstract class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.startEdit() = BookmarkStartEdit;
  const factory BookmarkEvent.endEdit() = BookmarkConfirmEdit;
  const factory BookmarkEvent.deletePlace(PlaceModel place) = BookmarkDeletePlaceEdit;
}