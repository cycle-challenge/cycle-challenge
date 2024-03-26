
import 'package:flutter/material.dart';


enum TravelMotivation {

  relax(label: "힐링", iconData: null),
  social(label: "친목", iconData: null),
  refresh(label: "리프레시", iconData: null),
  education(label: "교육", iconData: null),
  reflect(label: "성찰", iconData: null),
  sns(label: "SNS", iconData: null),
  energy(label: "활동", iconData: null),
  experience(label: "경험", iconData: null),
  others(label: "기타", iconData: null);

  final String label;
  final IconData? iconData;

  const TravelMotivation(
      {required this.label, required this.iconData });

  factory TravelMotivation.of(String value) {

    for (TravelMotivation element in TravelMotivation.values) {
      if (element.name == value) {
        return element;
      }
    }
    throw Exception("$value를 찾을 수 없습니댜.");
  }
}