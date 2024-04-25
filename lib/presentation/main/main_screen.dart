import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_screen.dart';

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
    
    if (authViewModel.state.member == null) {
      return const AuthScreen();
    }

    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: viewModel.state.navigationIndex == 3
            ? const BookmarkScreen()
            : const MapScreen(),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          if (index == 4) {
            final authViewModel = context.read<AuthViewModel>();
            authViewModel.onEvent(const AuthEvent.signOut());
          }

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
    );
  }
}
