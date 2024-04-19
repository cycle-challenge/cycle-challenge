
import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_sign_up_state.freezed.dart';


@freezed
class LocalSignUpState with _$LocalSignUpState {
  factory LocalSignUpState({
    @Default([]) List<String> errorMessages,
    @Default(0) int seconds
  }) = _LocalSignUpState;

}