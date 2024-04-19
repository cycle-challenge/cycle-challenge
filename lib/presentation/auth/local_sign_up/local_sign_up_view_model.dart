import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_state.dart';

class LocalSignUpViewModel with ChangeNotifier {
  final AuthRepository authRepository;

  LocalSignUpViewModel(this.authRepository);

  final StreamController<LocalSignUpUIEvent> _eventController =
  StreamController.broadcast();

  Stream<LocalSignUpUIEvent> get stream => _eventController.stream;
  LocalSignUpState _state = LocalSignUpState(errorMessages: []);
  LocalSignUpState get state => _state;

  void onEvent(LocalSignUpEvent event) {
    event.when(
        signUp: _onSignUp,
        verifyEmail: _onVerifyEmail);
  }

  void _onSignUp(String email, String password, String repeatPassword,
      String nickname, String verificationCode) async {
    _eventController.add(const LocalSignUpUIEvent.loading(true));
    final result = await authRepository.signUp(email, password, nickname, verificationCode);
    _eventController.add(const LocalSignUpUIEvent.loading(false));

    _state = _state.copyWith(errorMessages: []);

    result.when(
        success: (member) => _eventController
            .add(LocalSignUpUIEvent.success(member.nickname)),
        error: (errors) {
          final List<String> errorMessages = [];

          errors.forEach((error) {
            String? target = error.target;

            if (target == null) {
              errorMessages.add(error.message);
              return;
            }
            _eventController
                .add(LocalSignUpUIEvent.showInputError(target, error.message));
          });

          if (errorMessages.isEmpty) return;
          _state = _state.copyWith(errorMessages: errorMessages);
          notifyListeners();
        },
        unhandledError: (message) => {
          _state = _state.copyWith(errorMessages: [message])
        });
  }

  void _onVerifyEmail(String email) async {
    final result = await authRepository.verifyEmail(email);

    result.when(
        success: (_) {
          _state = _state.copyWith(verifyStarted: true);
          notifyListeners();
        },
        error: (errors) {
          final List<String> errorMessages = [];

          errors.forEach((error) {
            String? target = error.target;

            if (target == null) {
              errorMessages.add(error.message);
              return;
            }
            _eventController
                .add(LocalSignUpUIEvent.showInputError(target, error.message));
          });

          if (errorMessages.isEmpty) return;
          _state = _state.copyWith(errorMessages: errorMessages);
          notifyListeners();
        },
        unhandledError: (message) => {
          _state = _state.copyWith(errorMessages: [message])
        });
  }
}
