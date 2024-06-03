import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/global_state.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_state.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_ui_event.dart';

class MainViewModel with ChangeNotifier {
  final StreamController<MainUiEvent> _eventController;
  final AuthRepository _authRepository;

  Stream<MainUiEvent> get stream => _eventController.stream;

  MainState _state = MainState();
  MainState get state => _state;

  MainViewModel(this._eventController, this._authRepository) {
    _authRepository
        .getGlobalState()
        .then((result) => result.whenOrNull(success: (GlobalState state) {
              _state = _state.copyWith(
                  hasAgreedTerms: state.hasAgreedTerms,
                  hasCheckedPermissions: state.hasCheckedPermissions);
              notifyListeners();
            }));
  }

  void onEvent(MainEvent event) => event.when(
      changeNavigation: _onChangeNavigation,
      initBottomSheet: _initBottomSheet,
      expandBottomSheet: _expandBottomSheet,
      contractBottomSheet: _contractBottomSheet,
      setCanViewScrollUp: _setCanViewScrollUp,
      stopBottomSheetAnimation: _stopBottomSheetAnimation,
      changeHasAgreedTerms: _onChangeHasAgreedTerms,
      changeHasCheckedPermissions: _onChangeHasCheckedPermissions);

  void _onChangeHasCheckedPermissions(bool hasCheckedPermissions) {
    _state = _state.copyWith(hasCheckedPermissions: hasCheckedPermissions);
    notifyListeners();

    _authRepository.saveGlobalState(GlobalState(
        hasAgreedTerms: _state.hasAgreedTerms,
        hasCheckedPermissions: _state.hasCheckedPermissions));
  }

  void _onChangeHasAgreedTerms(bool hasAgreedTerms) {
    _state = _state.copyWith(hasAgreedTerms: hasAgreedTerms);
    notifyListeners();

    _authRepository.saveGlobalState(GlobalState(
        hasAgreedTerms: _state.hasAgreedTerms,
        hasCheckedPermissions: _state.hasCheckedPermissions));
  }

  void _onChangeNavigation(int index) {
    _state = _state.copyWith(navigationIndex: index);
    notifyListeners();
  }

  void _initBottomSheet(double? maxHeight) {
    if (maxHeight == null) {
      _state = MainState(
          maxHeight: _state.maxHeight,
          hasAgreedTerms: _state.hasAgreedTerms,
          hasCheckedPermissions: _state.hasCheckedPermissions);

      return;
    }
    _state = _state.copyWith(maxHeight: maxHeight);
  }

  void _expandBottomSheet() {
    _state = _state.copyWith(
        height: _state.maxHeight, isAnimating: true, isExpanded: true);
    notifyListeners();
  }

  void _contractBottomSheet() {
    _state = _state.copyWith(
        height: _state.minHeight, isAnimating: true, isExpanded: false);
    notifyListeners();
  }

  void _setCanViewScrollUp(bool value) {
    _state = _state.copyWith(canViewScrollUp: value);
    notifyListeners();
  }

  void _stopBottomSheetAnimation() {
    _state = _state.copyWith(isAnimating: false);
    notifyListeners();
  }
}
