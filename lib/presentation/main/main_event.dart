import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.freezed.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.changeNavigation(int index) = MainChangeNavigationEvent;
  const factory MainEvent.initBottomSheet(double? maxHeight) = MainInitBottomSheetEvent;
  const factory MainEvent.expandBottomSheet() = MainExpandBottomSheetEvent;
  const factory MainEvent.contractBottomSheet() = MainContractBottomSheetEvent;
  const factory MainEvent.setCanViewScrollUp(bool canViewScrollUp) = MainCanViewScrollUpEventEvent;
  const factory MainEvent.stopBottomSheetAnimation() = MainStopBottomSheetAnimationEventEvent;
  const factory MainEvent.changeHasAgreedTerms(bool hasAgreedTerms) = _ChangeHasAgreedTerms;
  const factory MainEvent.changeHasCheckedPermissions(bool hasCheckedPermissions) = _ChangeHasCheckedPermissions;
  const factory MainEvent.changeThemeMode(ThemeMode themeMode) = _ChangeThemeMode;
}