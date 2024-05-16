
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_sort_option.freezed.dart';

@freezed
abstract class PlaceSortOption with _$PlaceSortOption {
  const factory PlaceSortOption.nearest() = _Nearest;
  const factory PlaceSortOption.highestRated() = _HighestRated;
  const factory PlaceSortOption.mostReviewed() = _MostReviewed;
}