import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_ui_event.dart';

class AuthViewModel with ChangeNotifier {
  final AuthRepository authRepository;

  AuthViewModel(this.authRepository) {
    authRepository.findProfile().then((result)  {
      result.when(
          success: (member) {
            _eventController.add(AuthUIEvent.autoSignIn(member.nickname));
          },
          error: (errors) => _eventController.add(AuthUIEvent.showSnackBar(errors[0].message)),
          unhandledError: (message) =>
              _eventController.add(AuthUIEvent.showSnackBar(message)));
    });
  }

  final StreamController<AuthUIEvent> _eventController =
      StreamController.broadcast();

  Stream<AuthUIEvent> get stream => _eventController.stream;

  void onEvent(AuthEvent event) {
    print(11);
    event.when(signOut: _onSignOut);
  }

  void _onSignOut() async {

    authRepository.signOut();
  }
}
