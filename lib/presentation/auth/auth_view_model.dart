import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_state.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';

class AuthViewModel with ChangeNotifier {
  final AuthRepository authRepository;
  final StreamController<MainUiEvent> _eventController;

  AuthState _state = AuthState();
  AuthState get state => _state;

  AuthViewModel(this.authRepository, this._eventController) {
    authRepository.findProfile().then((result) {
      result.when(
          success: (member) {
            _onSignIn(member);
            _eventController.add(MainUiEvent.autoSignIn(member.nickname));
          },
          error: (errors) => errors.when(
              targetError: (_, __) {},
              error: (_, message) =>
                  _eventController.add(MainUiEvent.showSnackbar(message))));
    });
  }

  void onEvent(AuthEvent event) {
    event.when(signOut: _onSignOut, signIn:_onSignIn);
  }

  void _onSignOut() async {
    await authRepository.signOut();
    _state = _state.copyWith(member: null);
    notifyListeners();
  }

  void _onSignIn(Member member) {
    _state = _state.copyWith(member: member);
    notifyListeners();
  }
}
