import 'package:flutter/material.dart';

extension CustomTheme on TextTheme {
  TextStyle get maintext => const TextStyle(fontFamily: "Pretendard", fontWeight: FontWeight.w100, fontSize: 15);
  TextStyle get subtext => const TextStyle(fontFamily: "LineSeed", fontWeight: FontWeight.w100, fontSize: 15);
  TextStyle get inside => const TextStyle(fontFamily: "Suite", fontWeight: FontWeight.w500, fontSize: 20, color: Color(0xff343644));
}