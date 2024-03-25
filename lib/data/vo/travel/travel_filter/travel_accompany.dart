
import 'package:flutter/material.dart';


enum TravelAccompany {

  solo(label: "나혼자", iconData: null),
  friends(label: "지인과", iconData: null),
  parents(label: "부모님과", iconData: null),
  children(label: "자녀와", iconData: null),
  family(label: "가족과", iconData: null),
  others(label: "기타", iconData: null);

  final String label;
  final IconData? iconData;

  const TravelAccompany(
      {required this.label, required this.iconData });


  factory TravelAccompany.of(String value) {

    for (TravelAccompany element in TravelAccompany.values) {
      if (element.name == value) {
        return element;
      }
    }

    throw Exception("$value를 찾을 수 없습니댜.");
  }

}