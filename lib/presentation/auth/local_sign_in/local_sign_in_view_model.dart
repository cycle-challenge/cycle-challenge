import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_state.dart';

class LocalSignInViewModel with ChangeNotifier {
  final AuthRepository authRepository;

  LocalSignInViewModel(this.authRepository);

  final StreamController<LocalSignInUIEvent> _eventController =
      StreamController.broadcast();

  Stream<LocalSignInUIEvent> get stream => _eventController.stream;

  LocalSignInState _state = LocalSignInState();
  LocalSignInState get state => _state;

  void onEvent(LocalSignInEvent event) {
    event.when(signIn: _onSignIn);
  }

  void _onSignIn(String email, String password) async {
    _eventController.add(const LocalSignInUIEvent.loading(true));
    final result = await authRepository.signIn(email, password);
    _eventController.add(const LocalSignInUIEvent.loading(false));

    _state = _state.copyWith(errorMessages: []);

    result.when(success: (member) {
      _eventController.add(LocalSignInUIEvent.success(member));
    }, error: (error) {
      error.when(targetError: (_, Map<String, String> errors) {
        errors.values.toList();
        _state = _state.copyWith(errorMessages: errors.values.toList());
        notifyListeners();
      }, error: (_, message) {
        _state = _state.copyWith(errorMessages: [message]);
        notifyListeners();
      });

      notifyListeners();
    });
  }
}
