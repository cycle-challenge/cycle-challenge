import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_event.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/components/background_image_slider.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/main/components/terms_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  StreamSubscription? _subscription;

  @override
  void dispose() {
    super.dispose();
    _subscription?.cancel();
  }

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<MainViewModel>();

      _subscription = viewModel.stream.listen((event) => event.when(
          showSnackbar: _onShowSnackBar,
          autoSignIn: _onAutoSignIn,
          authorizationExpired: _onAuthorizationExpired));
    });
  }

  void _onAuthorizationExpired() {
    final authViewModel = context.read<AuthViewModel>();
    authViewModel.onEvent(const AuthEvent.signOut());

    while (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }

    _onShowSnackBar("인증 정보가 만료되었습니다. 다시 로그인 해주세요.");
  }

  void _onAutoSignIn(String nickname) {
    _onShowSnackBar("$nickname님 자동 로그인 되었습니다.");
  }

  void _onShowSnackBar(String message) {
    final snackBar = SnackBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        content: Text(message, style: Theme.of(context).textTheme.bodyLarge));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = context.watch<AuthViewModel>();

    final viewModel = context.watch<MainViewModel>();
    final mapViewModel = context.watch<MapViewModel>();

    const slider = BackgroundImageSlider();

    if (!viewModel.state.hasAgreedTerms) {
      return const TermsScreen(slider: slider);
    }

    if (authViewModel.state.member == null) {
      return const AuthScreen();
    }

    final isPlaceSelected = mapViewModel.filterState.selectedPlace != null;

    final bookmarkViewModel = context.watch<BookmarkViewModel>();

    bool isBookmarked = bookmarkViewModel.state.placeIdSet
        .contains(mapViewModel.filterState.selectedPlace?.id);

    final state = viewModel.state;

    Widget body = Container();

    switch (viewModel.state.navigationIndex) {
      case 0:
      case 1:
      case 2:
        body = const MapScreen();
        break;
      case 3:
        body = const BookmarkScreen();
        break;
      case 4:
        body = const ProfileScreen();
    }

    return Scaffold(
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          transitionBuilder: (Widget child, Animation<double> animation) =>
              FadeTransition(opacity: animation, child: child),
          child: body),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: isPlaceSelected
          ? FloatingActionButton(
              onPressed: isBookmarked
                  ? () => bookmarkViewModel.onEvent(BookmarkEvent.deletePlace(
                      mapViewModel.filterState.selectedPlace!))
                  : () => bookmarkViewModel.onEvent(BookmarkEvent.addPlace(
                      mapViewModel.filterState.selectedPlace!)),
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              child: Icon(
                  isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
                  color: Theme.of(context).colorScheme.onSurface),
            )
          : null,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                    width: 1))),
        child: isPlaceSelected
            ? BottomAppBar(
                surfaceTintColor: Theme.of(context).colorScheme.surface)
            : NavigationBar(
                onDestinationSelected: (index) {
                  viewModel.onEvent(const MainEvent.initBottomSheet(null));
                  viewModel.onEvent(MainEvent.changeNavigation(index));
                },
                selectedIndex: state.navigationIndex,
                surfaceTintColor: Theme.of(context).colorScheme.surface,
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.map),
                    label: '주변',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.place),
                    label: '관광지',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.flight),
                    label: '여행',
                  ),
                  NavigationDestination(
                    icon: Icon(
                      Icons.bookmark,
                    ),
                    label: '저장',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.account_circle),
                    label: '프로필',
                  ),
                ],
              ),
      ),
    );
  }
}
