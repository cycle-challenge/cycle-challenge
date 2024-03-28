import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/states/google_map_state.dart';

class MyLocationButtonWidget extends StatelessWidget {
  const MyLocationButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.93, 0.95),
      child: FloatingActionButton(
        heroTag: "my_location",
          onPressed: () async {
            await context.read<GoogleMapState>().moveToMyLocation();
          },
          backgroundColor: Theme.of(context).colorScheme.surface,
          tooltip: '내 위치',
          child: context.watch<GoogleMapState>().isDetermining
              ? SpinKitFadingCircle(
                  size: 24, color: Theme.of(context).colorScheme.primary)
              : Icon(Icons.gps_fixed,
                  color: Theme.of(context).colorScheme.primary)),
    );
  }
}
