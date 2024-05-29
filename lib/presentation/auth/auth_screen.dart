import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/components/background_image_slider.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';

class AuthScreen extends StatefulWidget {
  final BackgroundImageSlider slider;

  const AuthScreen({super.key, required this.slider});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<AuthViewModel>();

      viewModel.stream
          .listen((event) => event.when(startSocialSignIn: (uriString) async {
                final uri = Uri.parse(uriString);
                if (await canLaunchUrl(uri)) {
                  launchUrl(uri, mode: LaunchMode.inAppWebView);
                }
              }));
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<AuthViewModel>();
    final state = viewModel.state;

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
        children: [
          Positioned.fill(child: widget.slider),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.75),
                    Colors.black.withOpacity(1.0)
                  ])),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 48),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("여행뚝딱.",
                    style: textTheme.headlineLarge?.copyWith(
                      fontFamily: 'Jalnan_2',
                    )),
                const SizedBox(height: 12),
                Text('으로 계속하기',
                    style: textTheme.bodyMedium?.copyWith(color: Colors.grey)),
                const SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(16),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(color: colorScheme.onSurface)),
                            onPressed: () => viewModel
                                .onEvent(const AuthEvent.googleSignIn()),
                            icon: Column(
                              children: [
                                Image.asset("assets/image/google_logo.png",
                                    width: 24, height: 24),
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(width: 24),
                    Column(
                      children: [
                        IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => viewModel
                                .onEvent(const AuthEvent.googleSignIn()),
                            icon: Image.asset("assets/image/apple_logo.png",
                                width: 56, height: 56))
                      ],
                    ),
                    const SizedBox(width: 24),
                    Column(
                      children: [
                        IconButton(
                            padding: const EdgeInsets.all(16),
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.yellow),
                            onPressed: () => viewModel
                                .onEvent(const AuthEvent.googleSignIn()),
                            icon: Column(
                              children: [
                                Image.asset("assets/image/kakao_logo.png",
                                    width: 24, height: 24),
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 64),
                RichText(
                  text: TextSpan(
                    style: textTheme.bodyMedium?.copyWith(color: Colors.grey),
                    children: [
                      const TextSpan(text: '여행뚝딱의 서비스 약관 및 정책에 동의하셨습니다. '),
                      TextSpan(
                          text: '동의 여부 변경하기',
                          style: textTheme.bodyMedium
                              ?.copyWith(color: Colors.grey.shade200),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              final mainViewModel =
                                  context.read<MainViewModel>();
                              mainViewModel.onEvent(
                                  const MainEvent.changeHasAgreedTerms(false));
                            }),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
