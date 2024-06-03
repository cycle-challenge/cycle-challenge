import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/bookmark/bookmark_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/components/my_travel_list_view.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/setting_screen.dart';
import 'package:yeohaeng_ttukttak/utils/widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authViewModel = context.watch<AuthViewModel>();
    final member = authViewModel.state.member;

    final viewModel = context.watch<ProfileViewModel>();
    final state = viewModel.state;

    if (member == null) return const SizedBox();

    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context).colorTheme;
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingScreen())),
              icon: const Icon(Icons.settings)),
          const SizedBox(width: 8)
        ]),
        body: Column(children: [
          ListTile(
              leading: RandomAvatar(member.nickname, width: 48, height: 48),
              title: Text(member.nickname),
              subtitle: RichText(
                  text: TextSpan(style: textTheme.labelLarge, children: [
                const TextSpan(text: '여행 '),
                TextSpan(text: '${state.myTravels.length}').bold(),
                const TextSpan(text: ' • 리뷰 '),
                const TextSpan(text: '0').bold()
              ]))),
          const SizedBox(height: 8),
          Expanded(
              child: DefaultTabController(
                  length: 2,
                  child: Column(children: [
                    const TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                        tabs: [Tab(child: Text('여행')), Tab(child: Text('리뷰'))]),
                    Expanded(
                      child: FadeTabBarView(
                          children: [const MyTravelListView(), Container()]),
                    )
                  ])))
        ]));
  }
}