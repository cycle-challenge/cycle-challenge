
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';
import 'package:yeohaeng_ttukttak/presentation/travel_create/travel/visit_display_type.dart';

part 'travel_state.freezed.dart';

@freezed
class TravelState with _$TravelState {
  factory TravelState({
    @Default(0.0) double panelHeight,
    @Default([]) List<VisitDisplayType> items,
    @Default(false) bool isCameraMoved,
    @Default([]) List<VisitArea> partialAreas,
    @Default(0) int visitIndex,
    VisitArea? entireArea,
    @Default(false) bool canPanelScrollUp,
    @Default(false) bool isViewExpanded
  }) = _TravelState;

}