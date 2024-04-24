import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/di/setup_providers.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_screen.dart';
import 'package:yeohaeng_ttukttak/theme.dart';
import 'package:yeohaeng_ttukttak/utils/auth_interceptor.dart';

void main() async {
  runApp(MultiProvider(
    providers: [...globalProviders],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    const materialTheme = MaterialTheme(TextTheme());

    return MaterialApp(
      supportedLocales: const [Locale("ko"), Locale("en")],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      themeMode: ThemeMode.system,
      title: 'Flutter Maps Demo',
      home: const AuthScreen(), // MapView 위젯 사용
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //
  //   Future.microtask(() {
  //     final authViewModel = context.read<AuthViewModel>();
  //
  //     context.read<AuthInterceptor>().stream.listen((event) => event.when(
  //         authorizationExpired: () =>
  //             authViewModel.onEvent(const AuthEvent.signOut())));
  //
  //     authViewModel.stream.listen((event) =>
  //         event.when(showSnackBar: _onShowSnackBar, autoSignIn: _onAutoSignIn));
  //   });
  // }
  //
  //
  // void _onAutoSignIn(String nickname) {
  //   while (Navigator.of(context).canPop()) {
  //     Navigator.of(context).pop();
  //   }
  //   Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(builder: (context) => const MapScreen()));
  //
  //   _onShowSnackBar("$nickname님 자동 로그인 되었습니다.");
  // }
  //
  // void _onShowSnackBar(String message, {void Function(bool)? onPopInvoked}) {
  //   final snackBar = SnackBar(
  //       backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
  //       content: PopScope(
  //           onPopInvoked: onPopInvoked,
  //           child:
  //           Text(message, style: Theme.of(context).textTheme.bodyLarge)));
  //
  //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
  // }
}
