
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';

part 'bookmark_event.freezed.dart';

@freezed
abstract class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.startEdit() = BookmarkStartEditEvent;
  const factory BookmarkEvent.endEdit() = BookmarkConfirmEditEvent;
  const factory BookmarkEvent.deletePlace(Place place) = BookmarkDeletePlaceEvent;
  const factory BookmarkEvent.deleteTravel(Travel travel) = BookmarkDeleteTravelEvent;
  const factory BookmarkEvent.addPlace(Place place) = BookmarkAddPlaceEvent;
  const factory BookmarkEvent.addTravel(Travel travel) = BookmarkAddTravelEvent;
}