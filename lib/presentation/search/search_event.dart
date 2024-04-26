
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'search_event.freezed.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initState() = SearchInitStateEvent;
  const factory SearchEvent.search(String query) = SearchQueryEvent;
  const factory SearchEvent.addHistory(Place? place) = SearchAddHistoryEvent;
  const factory SearchEvent.deleteHistory(Place? place) = SearchDeleteHistoryEvent;
}