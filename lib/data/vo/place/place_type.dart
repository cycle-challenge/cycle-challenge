import 'package:flutter/material.dart';

enum PlaceType {

  food(label: "식당", iconData: Icons.restaurant),
  nature(label: "자연", iconData: Icons.forest),
  attraction(label: "관광", iconData: Icons.local_see),
  leisure(label: "레저", iconData: Icons.local_attraction),
  culture(label: "문화", iconData: Icons.museum),
  hotel(label: "숙박", iconData: Icons.hotel),
  theme(label: "테마", iconData: Icons.attractions);

  final String label;
  final IconData? iconData;

  const PlaceType(
      {required this.label, required this.iconData });

  factory PlaceType.of(String value) {

    for (PlaceType element in PlaceType.values) {
      if (element.name == value) {
        return element;
      }
    }

    throw Exception("$value를 찾을 수 없습니댜.");
  }

}