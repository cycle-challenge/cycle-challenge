import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/bottom_sheet_state.dart';
import 'package:yeohaeng_ttukttak/states/travel_view_model.dart';
import 'package:yeohaeng_ttukttak/utils/stack.dart';

class NavigationState with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  final StackCollection<Navigate> _stack = StackCollection();
  StackCollection<Navigate> get stack => _stack;

  setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void update(Navigate navigate) {
    _selectedIndex = navigate.selectedIndex ?? _selectedIndex;
    notifyListeners();
  }
}

class Navigate {
  bool? _isSheetShown;

  int? _selectedIndex;

  double? _bottomSheetHeight;

  int? _selectedPlaceId;

  int? get selectedPlaceId => _selectedPlaceId;

  bool? get isSheetShown => _isSheetShown;

  int? get selectedIndex => _selectedIndex;

  double? get bottomSheetHeight => _bottomSheetHeight;

  Navigate(
      {BottomSheetState? bottomSheetState,
      NavigationState? navigationState,
      TravelViewModel? placeViewModel})
      : _isSheetShown = bottomSheetState?.isSheetShown,
        _bottomSheetHeight = bottomSheetState?.height,
        _selectedIndex = navigationState?.selectedIndex,
        _selectedPlaceId = placeViewModel?.selectedPlaceID;
}

void pushNavigate(BuildContext context) {
  context.read<NavigationState>().stack.push(Navigate(
      bottomSheetState: context.read<BottomSheetState>(),
      navigationState: context.read<NavigationState>(),
      placeViewModel: context.read<TravelViewModel>()));
}

void popNavigate(BuildContext context) {
  if (context.read<NavigationState>().stack.isEmpty) return;

  Navigate navigate = context.read<NavigationState>().stack.pop();
  context.read<BottomSheetState>().update(navigate);
  context.read<NavigationState>().update(navigate);
  context.read<TravelViewModel>().update(navigate);
}
