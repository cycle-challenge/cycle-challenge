import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';

part 'search_state.freezed.dart';


@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default('') String query,
    @Default([]) List<Place> places,
    @Default([]) List<Place> history
  }) = _SearchState;

}