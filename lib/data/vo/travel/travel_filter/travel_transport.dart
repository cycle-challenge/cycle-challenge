
import 'package:flutter/material.dart';


enum TravelTransport {

  car(label: "자차", iconData: Icons.directions_car_filled),
  public(label: "대중교통", iconData: Icons.directions_transit);

  final String label;
  final IconData iconData;

  const TravelTransport(
      {required this.label, required this.iconData});

  factory TravelTransport.of(String value) {

    for (TravelTransport element in TravelTransport.values) {
      if (element.name == value) {
        return element;
      }
    }

    return TravelTransport.public;
  }

}