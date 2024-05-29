import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_state.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';

class AuthViewModel with ChangeNotifier {
  final UseCases useCases;
  final AuthRepository authRepository;

  final StreamController<AuthUiEvent> _eventController =
      StreamController.broadcast();
  final StreamController<MainUiEvent> _mainEventController;

  Stream<AuthUiEvent> get stream => _eventController.stream;

  AuthState _state = AuthState();
  AuthState get state => _state;

  AuthViewModel(this.useCases, this.authRepository, this._mainEventController) {
    authRepository.findProfile().then((result) {
      result.when(
          success: (member) {
            _state = _state.copyWith(member: member);
            notifyListeners();

            _mainEventController.add(MainUiEvent.autoSignIn(member.nickname));
          },
          error: (errors) => errors.when(
              targetError: (_, __) {},
              error: (_, message) =>
                  _mainEventController.add(MainUiEvent.showSnackbar(message))));
    });
  }

  void onEvent(AuthEvent event) => event.when(
      signOut: _onSignOut,
      googleSignIn: _onGoogleSignIn,
      deleteGoogleAccount: _onDeleteGoogleAccount);

  void _onSignOut() async {
    await authRepository.signOut();
    _state = _state.copyWith(member: null);
    notifyListeners();
  }


  void _onGoogleSignIn() async {
    final result = await useCases.googleSignInUseCase();

    result.when(
        success: (member) {
          _state = _state.copyWith(member: member);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message)));
  }

  void _onDeleteGoogleAccount() async {
    final result = await useCases.revokeGoogleAccountUseCase();

    await authRepository.signOut();
    _state = _state.copyWith(member: null);

    _mainEventController.add(MainUiEvent.showSnackbar(result.when(
        success: (_) => '회원 탈퇴가 완료 되었습니다.', error: (message) => message)));

    notifyListeners();
  }
}
