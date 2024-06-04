import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_ui_event.freezed.dart';

@freezed
abstract class MainUiEvent with _$MainUiEvent {
  const factory MainUiEvent.authorizationExpired() = MainAuthorizationExpiredEvent;
  const factory MainUiEvent.autoSignIn(String nickname) = MainAutoSignInEvent;
  const factory MainUiEvent.showSnackbar(String message) = MainShowSnackbarEvent;
  const factory MainUiEvent.themeModeChanged(ThemeMode themeMode) = _ThemeModeChanged;
}