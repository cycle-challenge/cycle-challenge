import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/components/create_travel_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/components/my_travel_list_item.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_view_model.dart';

class ProfileTravelView extends StatelessWidget {
  const ProfileTravelView({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    final viewModel = context.watch<ProfileViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: ListView.separated(
        reverse: true,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        itemCount: state.myTravels.length,
        itemBuilder: (context, index) =>
            MyTravelListItem(travel: state.myTravels[index]),
        separatorBuilder: (_, __) => const SizedBox(height: 16),
      ),
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
        backgroundColor: colorScheme.secondaryContainer,
        foregroundColor: colorScheme.onSecondaryContainer,
      ),
    );
  }
}
