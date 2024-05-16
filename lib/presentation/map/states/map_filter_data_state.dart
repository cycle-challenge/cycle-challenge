


import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/place.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/map/components/place_sort_option.dart';

part 'map_filter_data_state.freezed.dart';

@freezed
class MapFilterDataState with _$MapFilterDataState {
  factory MapFilterDataState({
    @Default([]) List<Place> filteredPlaces,
    @Default([]) List<Travel> filteredTravels,
    @Default(PlaceSortOption.highestRated()) PlaceSortOption placeSortOption,
    required PlaceFilter placeFilter,
    required TravelFilter travelFilter,
    Place? selectedPlace
  }) = _MapFilterDataState;

}