
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';

part 'bookmark_event.freezed.dart';

@freezed
abstract class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.startEdit() = BookmarkStartEditEvent;
  const factory BookmarkEvent.endEdit() = BookmarkConfirmEditEvent;
  const factory BookmarkEvent.deletePlace(PlaceModel place) = BookmarkDeletePlaceEvent;
  const factory BookmarkEvent.deleteTravel(TravelModel travel) = BookmarkDeleteTravelEvent;
  const factory BookmarkEvent.addPlace(PlaceModel place) = BookmarkAddPlaceEvent;
  const factory BookmarkEvent.addTravel(TravelModel travel) = BookmarkAddTravelEvent;
}