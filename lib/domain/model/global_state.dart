import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_state.freezed.dart';

part 'global_state.g.dart';

@freezed
@HiveType(typeId: 2)
class GlobalState with _$GlobalState {
  factory GlobalState(
      {@HiveField(0, defaultValue: false)
      @Default(false)
      bool hasAgreedTerms,

      @HiveField(1, defaultValue: false)
      @Default(false)
      bool hasCheckedPermissions,

      @HiveField(2, defaultValue: 'system')
      @Default('system')
      String themeMode
  }) = _MainState;

  factory GlobalState.fromJson(Map<String, dynamic> json) =>
      _$GlobalStateFromJson(json);
}
