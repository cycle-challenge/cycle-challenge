import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_sign_up_ui_event.freezed.dart';

@freezed
abstract class LocalSignUpUIEvent<T> with _$LocalSignUpUIEvent<T> {
  const factory LocalSignUpUIEvent.showInputError(
      String target, String message) = LocalSignUphowInputErrorUIEvent;
  const factory LocalSignUpUIEvent.success(String nickname) =
      LocalSignUpSuccessUIEvent;
  const factory LocalSignUpUIEvent.loading(bool isSubmitting) =
      LocalSignUpLoadingUIEvent;
}
