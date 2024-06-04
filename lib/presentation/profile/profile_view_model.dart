import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/domain/use_case/use_cases.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_event.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_state.dart';

class ProfileViewModel with ChangeNotifier {
  final UseCases _useCases;
  final StreamController<MainUiEvent> _mainEventController;

  ProfileState _state = ProfileState();
  ProfileState get state => _state;

  ProfileViewModel(this._mainEventController, this._useCases) {
    _onInit();
  }

  void onEvent(ProfileEvent event) => event.when(init: _onInit);

  void _onInit() {
    _useCases.getMyTravelsUseCase().then((result) => result.when(
        success: (travels) {
          _state = _state.copyWith(myTravels: travels);
          notifyListeners();
        },
        error: (message) =>
            _mainEventController.add(MainUiEvent.showSnackbar(message))));
  }

}
