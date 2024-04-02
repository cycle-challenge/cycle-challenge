import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yeohaeng_ttukttak/data/models/place_model.dart';
import 'package:yeohaeng_ttukttak/data/vo/filter.dart';

part 'map_event.freezed.dart';

@freezed
abstract class MapEvent with _$MapEvent {
  const factory MapEvent.findNearbyPlace() = FindNearbyPlaceEvent;
  const factory MapEvent.selectPlace(PlaceModel? place) = SelectPlaceEvent;
  const factory MapEvent.initBottomSheet(double? maxHeight) = InitBottomSheet;
  const factory MapEvent.changeNavigation(int index) = ChangeNavigationEvent;
  const factory MapEvent.changePosition(CameraPosition position) = ChangePositionEvent;
  const factory MapEvent.changeToMyPosition() = MoveToMyPositionEvent;
  const factory MapEvent.showSearchButton() = ShowSearchButton;
  const factory MapEvent.hideSearchButton() = HideSearchButton;
  const factory MapEvent.expandBottomSheet() = ExpandBottomSheet;
  const factory MapEvent.contractBottomSheet() = ContractBottomSheet;
  const factory MapEvent.setCanViewScrollUp(bool canViewScrollUp) = CanViewScrollUpEvent;
  const factory MapEvent.stopBottomSheetAnimation() = StopBottomSheetAnimationEvent;
  const factory MapEvent.updateFilter(Filter filter) = UpdateFilterEvent;
}
