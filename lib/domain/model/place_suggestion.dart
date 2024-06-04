import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_suggestion.freezed.dart';
part 'place_suggestion.g.dart';

@freezed
@HiveType(typeId: 1)
class PlaceSuggestion with _$PlaceSuggestion {
  factory PlaceSuggestion(
      {@HiveField(0) required int placeId,
      @HiveField(1) required String name,
      @HiveField(2) required String localAddr,
      @HiveField(3) required String roadAddr,
      @HiveField(4) DateTime? modifiedAt}) = _PlaceSuggestion;

  factory PlaceSuggestion.fromJson(Map<String, dynamic> json) => _$PlaceSuggestionFromJson(json);
}
