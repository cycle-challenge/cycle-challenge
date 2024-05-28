import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/components/my_travel_list_view.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/setting_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = context.watch<AuthViewModel>();
    final member = authViewModel.state.member;

    final viewModel = context.watch<ProfileViewModel>();
    final state = viewModel.state;

    if (member == null) return const SizedBox();

    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingScreen())),
            icon: const Icon(Icons.settings)),
        const SizedBox(width: 8)
      ]),
      body: Column(
        children: [
          ListTile(
              leading: const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/image/default.png')),
              title: Text(member.nickname,
                  style: Theme.of(context).textTheme.titleLarge),
              subtitle: Text('여행 ${state.myTravels.length}개 • 리뷰 0건',
                  style: Theme.of(context).textTheme.bodyMedium)),
          const SizedBox(height: 8),
          Expanded(
              child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(
                    tabs: [Tab(child: Text('여행')), Tab(child: Text('리뷰'))]),
                Expanded(
                    child: TabBarView(
                        children: [const MyTravelListView(), Container()]))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
