
import 'package:flutter/cupertino.dart';

class BottomSheetState with ChangeNotifier {

    double minHeight = 230;
    double maxHeight = 0.0;

    double _height = 230;
    double get height => _height;

    bool _isAnimating = false;
    bool get isAnimating => _isAnimating;
    bool get isExpanded => _height == maxHeight && !isAnimating;

    bool _isSheetShown = false;
    bool get isSheetShown => _isSheetShown;

    void setIsSheetShown(bool isSheetShown) {
        _isSheetShown = isSheetShown;
        notifyListeners();
    }

    void init() {
        _isSheetShown = false;
        _isAnimating = false;
        _height = minHeight;
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