import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/components/create_travel_sheet.dart';

class ProfileTravelView extends StatelessWidget {
  const ProfileTravelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => CreateTravelSheet(),
          isScrollControlled: true,
          useSafeArea: true,
        ),
        elevation: 0,
        icon: const Icon(Icons.edit),
        label: const Text('여행 만들기'),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
    );
  }
}
