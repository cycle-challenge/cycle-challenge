
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/models/travel_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/place/place_filter.dart';
import 'package:yeohaeng_ttukttak/data/vo/travel/travel_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_filter_data_state.freezed.dart';

@freezed
class MapFilterDataState with _$MapFilterDataState {
  factory MapFilterDataState({
    @Default([]) List<PlaceModel> filteredPlaces,
    @Default([]) List<TravelModel> filteredTravels,
    required PlaceFilter placeFilter,
    required TravelFilter travelFilter,
    PlaceModel? selectedPlace
  }) = _MapFilterDataState;

}