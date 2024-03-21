
import 'package:flutter/cupertino.dart';

class NavigationState with ChangeNotifier {

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  bool _isSheetShown = false;
  bool get isSheetShown => _isSheetShown;

  setSelectedIndex(int index) {
    _selectedIndex = index;
    _isSheetShown = false;

    if (_selectedIndex == 1) {
      _isSheetShown = true;
    }

    notifyListeners();
  }

}