
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';

part 'search_event.freezed.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initState() = SearchInitStateEvent;
  const factory SearchEvent.autoComplete(String query) = SearchAutoCompleteEvent;
  const factory SearchEvent.search(PlaceSuggestion? place) = SearchRequestEvent;
  const factory SearchEvent.deleteHistory(PlaceSuggestion? place) = SearchDeleteHistoryEvent;
}