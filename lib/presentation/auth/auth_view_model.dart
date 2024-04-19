import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_ui_event.dart';

class AuthViewModel with ChangeNotifier {
  final AuthRepository authRepository;

  AuthViewModel(this.authRepository) {
    authRepository.findProfile().then((result) => result.when(
        success: (member) {
          _eventController.add(AuthUIEvent.autoSignIn(member.nickname));
        },
        error: (_) {},
        unhandledError: (message) =>
            _eventController.add(AuthUIEvent.showSnackBar(message))));
  }

  final StreamController<AuthUIEvent> _eventController =
      StreamController.broadcast();

  Stream<AuthUIEvent> get stream => _eventController.stream;


  void onEvent(AuthEvent event) {
    event.when(signOut: _onSignOut);
  }

  void _onSignOut() async {

    authRepository.signOut();
  }
}
