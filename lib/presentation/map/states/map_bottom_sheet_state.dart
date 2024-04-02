import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_bottom_sheet_state.freezed.dart';

@freezed
class MapBottomSheetState with _$MapBottomSheetState {
  factory MapBottomSheetState(
      {@Default(244.0) double height,
      @Default(244.0) double minHeight,
      @Default(0.0) double maxHeight,
      @Default(false) bool isExpanded,
      @Default(false) bool isAnimating,
      @Default(false) bool canViewScrollUp}) = _MapBottomSheetState;
}
