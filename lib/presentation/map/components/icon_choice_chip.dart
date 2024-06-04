import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/main.dart';

class IconChoiceChip extends ChoiceChip {
  const IconChoiceChip(
      {super.key,
      required super.label,
      required super.selected,
      required super.onSelected,
      required Icon? icon})
      : super(avatar: selected ? null : (icon));

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}