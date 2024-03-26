import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigation_state.dart';

class BottomSheetState with ChangeNotifier {
  double minHeight = 244;
  double maxHeight = 0.0;

  double _height = 244;
  double get height => _height;

  bool _isAnimating = false;
  bool get isAnimating => _isAnimating;
  bool get isExpanded => _height == maxHeight && !isAnimating;

  bool _canViewScrollUp = false;
  bool get canViewScrollUp => _canViewScrollUp;

  bool _isBusinessHourExpanded = false;

  bool get isBusinessHourExpanded => _isBusinessHourExpanded;

  late final TabController? _tabController;
  TabController? get tabController => _tabController;

  set isBusinessHourExpanded(bool value) {
    _isBusinessHourExpanded = value;
    notifyListeners();
  }

  void setCanViewScrollUp(bool isSheetDragging) {
    _canViewScrollUp = isSheetDragging;
    notifyListeners();
  }
  void init(TabController controller) {
    _tabController = controller;
  }

  void clear() {
    _isAnimating = false;
    _height = minHeight;
    notifyListeners();
  }

  void update(Navigate navigate) {
    _height = navigate.bottomSheetHeight ?? _height;
    notifyListeners();
  }

  void setIsAnimating(bool isAnimating) {
    _isAnimating = isAnimating;
    notifyListeners();
  }

  void expand() {
    _isAnimating = true;
    _height = maxHeight;
    notifyListeners();
  }

  void reduce() {
    _isAnimating = true;
    _height = minHeight;
    notifyListeners();
  }
}
