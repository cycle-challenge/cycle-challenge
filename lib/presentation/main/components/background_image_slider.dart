import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundImageSlider extends StatefulWidget {
  const BackgroundImageSlider({super.key});

  @override
  State<BackgroundImageSlider> createState() => _BackgroundImageSliderState();
}

class _BackgroundImageSliderState extends State<BackgroundImageSlider> {
  late final Timer timer;

  static const _pageSize = 5;

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
        const Duration(seconds: 5),
        (timer) => setState(() {
              if (_pageIndex + 1 >= _pageSize) {
                _pageIndex -= _pageSize;
              }
              _pageIndex++;
            }));
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: SizedBox(
        key: ValueKey<int>(_pageIndex),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Image.asset(
          'assets/image/main_slider_image_${_pageIndex + 1}.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
