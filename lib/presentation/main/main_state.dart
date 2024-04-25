import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  factory MainState(
      {@Default(0) int navigationIndex,
      @Default(244.0) double height,
      @Default(244.0) double minHeight,
      @Default(0.0) double maxHeight,
      @Default(false) bool isExpanded,
      @Default(false) bool isAnimating,
      @Default(false) bool canViewScrollUp}) = _MainState;

  factory MainState.fromJson(Map<String, dynamic> json) =>
      _$MainStateFromJson(json);
}
