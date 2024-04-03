import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String message) {
  TextStyle? bodyLarge = Theme.of(context).textTheme.bodyLarge;

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      duration: const Duration(milliseconds: 2000),
      content: Text(message, style: bodyLarge)));
}
