import 'package:flutter/material.dart';

class FormErrors extends StatelessWidget {
  final List<String> errorMessages;

  const FormErrors({super.key, required this.errorMessages});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: errorMessages
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(e,
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error)),
              ))
          .toList(),
    );
  }
}
