import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  factory MainState(
      {@Default(0) int navigationIndex,
      @Default(244.0) double height,
      @Default(244.0) double minHeight,
      @Default(0.0) double maxHeight,
      @Default(false) bool isExpanded,
      @Default(false) bool isAnimating,
      @Default(false) bool canViewScrollUp,
      @Default(false) bool hasAgreedTerms,
      @Default(false) bool hasCheckedPermissions}) = _MainState;

}
