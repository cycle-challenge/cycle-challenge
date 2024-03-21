import 'package:flutter/material.dart';

const List<PlaceType> placeTypes = [
  PlaceType(value: "food", label: "식당", iconData: Icons.restaurant),
  PlaceType(value: "nature", label: "자연", iconData: Icons.forest),
  PlaceType(value: "attraction", label: "관광", iconData: Icons.local_see),
  PlaceType(value: "leisure", label: "레저", iconData: Icons.local_attraction),
  PlaceType(value: "culture", label: "문화", iconData: Icons.museum),
  PlaceType(value: "hotel", label: "숙박", iconData: Icons.hotel),
  PlaceType(value: "theme", label: "테마", iconData: Icons.attractions),
];

final Map<String, PlaceType> placeTypeMap = { for (var e in placeTypes) e.value : e };

class PlaceType {
  final String value;
  final String label;
  final IconData iconData;

  const PlaceType(
      {required this.value, required this.label, required this.iconData});
}
