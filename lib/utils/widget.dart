
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/main.dart';

extension InvertColorTheme on Widget {
  Widget invertColor(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    final invertedTheme =
    brightness == Brightness.light ? ThemeData.dark() : ThemeData.light();

    return Theme(data: buildCustomTheme(invertedTheme), child: this);
  }
}

extension BlurWidget on Widget {
  Widget blur({double sigmaX = 3.0, double sigmaY = 3.0}) {

    return ClipRRect(
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
            child: this));
  }
}

extension TextSpanBold on TextSpan {
  TextSpan bold() {
    return TextSpan(
        children: [this], style: const TextStyle(fontWeight: FontWeight.w600));
  }
}
