
import 'package:flutter/material.dart';


enum TravelPeriod {

  spring(label: "봄", iconData: Icons.compost),
  summer(label: "여름", iconData: Icons.light_mode),
  autumn(label: "가을", iconData: Icons.forest),
  winter(label: "가을", iconData: Icons.ac_unit);

  final String label;
  final IconData iconData;

  const TravelPeriod(
      {required this.label, required this.iconData});

}