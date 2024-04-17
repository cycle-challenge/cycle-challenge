import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final String nickname;

  const WelcomeScreen({super.key, required this.nickname});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(text: nickname),
              const TextSpan(text: '님, 환영합니다!')
            ]))
          ]),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MapScreen()));
              },
              child: const Text('확인'))
        ],
      ),
    );
  }
}
