import 'package:flutter/material.dart';

class MyLocationButtonWidget extends StatelessWidget {
  final void Function() onTap;

  const MyLocationButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.9, 0),
      child: FloatingActionButton(
          heroTag: "my_location",
          onPressed: onTap,
          backgroundColor: Theme.of(context).colorScheme.surface,
          tooltip: '내 위치',
          child: Icon(Icons.gps_fixed,
              color: Theme.of(context).colorScheme.primary)),
    );
  }
}
