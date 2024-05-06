
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/domain/model/visit_area.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/visit_display_type.dart';

part 'travel_state.freezed.dart';

@freezed
class TravelState with _$TravelState {
  factory TravelState({
    required Travel travel,

    @Default([]) List<VisitDisplayType> items,
    @Default(0) int visitIndex,

    @Default(0.0) double panelHeight,

    @Default(false) bool isCameraMoved,
    @Default([]) List<VisitArea> partialAreas,
    VisitArea? entireArea,

    @Default(false) bool canPanelScrollUp,
    @Default(false) bool isViewExpanded,
    @Default(false) bool isModifying
  }) = _TravelState;

}