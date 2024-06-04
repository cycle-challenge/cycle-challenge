

import 'package:flutter/material.dart';


enum TravelAgeGroup {

  s20(label: "20-30", iconData: null),
  s30(label: "30-40", iconData: null),
  s40(label: "40-50", iconData: null),
  s50(label: "50-60", iconData: null),
  p60(label: "60+", iconData: null),
  other(label: '기타', iconData: null);

  final String label;
  final IconData? iconData;

  const TravelAgeGroup(
      {required this.label, required this.iconData });

  factory TravelAgeGroup.of(String? value) {

    for (TravelAgeGroup element in TravelAgeGroup.values) {
      if (element.name == value) {
        return element;
      }
    }

    return TravelAgeGroup.other;
  }
}