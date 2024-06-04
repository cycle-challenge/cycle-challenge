import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place_suggestion.dart';

part 'search_state.freezed.dart';


@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default('') String query,
    @Default([]) List<PlaceSuggestion> places,
    @Default([]) List<PlaceSuggestion> history
  }) = _SearchState;

}