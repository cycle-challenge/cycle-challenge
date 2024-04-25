
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';

part 'local_sign_in_ui_event.freezed.dart';

@freezed
abstract class LocalSignInUIEvent with _$LocalSignInUIEvent {
  const factory LocalSignInUIEvent.success(Member member) = LocalSignInSuccessUIEvent;
  const factory LocalSignInUIEvent.loading(bool isSubmitting) = LocalSignInLoadingUIEvent;
  const factory LocalSignInUIEvent.showInputError(
      String target, String message) = LocalSignInShowInputErrorUIEvent;
}