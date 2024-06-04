import 'package:flutter/material.dart';

enum PlaceType {

  food(label: "식당", iconData: Icons.restaurant, backgroundColor: Color(0XFF5491F5)),
  nature(label: "자연", iconData: Icons.forest, backgroundColor: Color(0XFF34A853)),
  attraction(label: "관광", iconData: Icons.local_see, backgroundColor: Color(0XFF8ED100)),
  leisure(label: "레저", iconData: Icons.local_attraction, backgroundColor: Color(0XFFFF5722)),
  culture(label: "문화", iconData: Icons.museum, backgroundColor: Color(0XFF12B5CB)),
  hotel(label: "숙박", iconData: Icons.hotel, backgroundColor: Color(0XFFF06292)),
  theme(label: "테마", iconData: Icons.attractions, backgroundColor: Color(0XFFF29900));

  final String label;
  final Color backgroundColor;
  final IconData? iconData;

  const PlaceType(
      {required this.label, required this.iconData, required this.backgroundColor });

  factory PlaceType.of(String value) {

    for (PlaceType element in PlaceType.values) {
      if (element.name == value) {
        return element;
      }
    }

    throw Exception("$value를 찾을 수 없습니댜.");
  }

}