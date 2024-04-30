import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_suggestion.freezed.dart';
part 'place_suggestion.g.dart';

@freezed
@HiveType(typeId: 1)
class PlaceSuggestion with _$PlaceSuggestion {
  factory PlaceSuggestion(
      {@HiveField(0) required String googlePlaceId,
      @HiveField(1) required String name,
      @HiveField(2) required String address,
      @HiveField(3) DateTime? modifiedAt}) = _PlaceSuggestion;

  factory PlaceSuggestion.fromJson(Map<String, dynamic> json) {
    return PlaceSuggestion(
        googlePlaceId: json['placePrediction']['placeId'] as String,
        name: json['placePrediction']['structuredFormat']['mainText']['text'] as String,
        address: json['placePrediction']['structuredFormat']['secondaryText']['text'] as String);
  }
}
