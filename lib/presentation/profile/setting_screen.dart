import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorTheme;
    final textTheme = Theme.of(context).textTheme;

    final authViewModel = context.watch<AuthViewModel>();

    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    late final String themeModeLabel;

    switch (state.themeMode) {
      case ThemeMode.dark:
        themeModeLabel = '어두운';
      case ThemeMode.light:
        themeModeLabel = '뱕은';
      case ThemeMode.system:
        themeModeLabel = '시스템';
      default:
        themeModeLabel = '';
    }

    return Scaffold(
        appBar: AppBar(title: const Text('설정')),
        body: Column(children: [
          ListTile(
              title: const Text('화면 테마'),
              trailing: Text(themeModeLabel,
                  style: textTheme.bodyMedium
                      ?.copyWith(color: colorTheme.foregroundLight)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  final viewModel = context.watch<MainViewModel>();


                  final state = viewModel.state;
                  return Scaffold(
                      appBar: AppBar(title: const Text('화면 테마')),
                      body: SafeArea(
                          child: Column(children: [
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: const Text('밝은 테마'),
                            value: ThemeMode.light,
                            groupValue: state.themeMode,
                            onChanged: (value) {
                              if (value == null) return;
                              viewModel
                                  .onEvent(MainEvent.changeThemeMode(value));
                            }),
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: const Text('어두운 테마'),
                            value: ThemeMode.dark,
                            groupValue: state.themeMode,
                            onChanged: (value) {
                              if (value == null) return;
                              viewModel
                                  .onEvent(MainEvent.changeThemeMode(value));
                            }),
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: const Text('시스템 설정에 따름'),
                            value: ThemeMode.system,
                            groupValue: state.themeMode,
                            onChanged: (value) {
                              if (value == null) return;
                              viewModel
                                  .onEvent(MainEvent.changeThemeMode(value));
                            }),
                      ])));
                }));
              }),
          const Divider(),
          ListTile(
              title: const Text('여행뚝딱 이용약관'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {}),
          ListTile(
              title: const Text('위치기반 서비스 이용약관'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {}),
          ListTile(
              title: const Text('개인정보 처리방침'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {}),
          const Divider(),
          ListTile(
              title: const Text('로그아웃'),
              onTap: () {
                authViewModel.onEvent(const AuthEvent.signOut());
                Navigator.of(context).pop();
              }),
          ListTile(
              title: Text('회원 탈퇴',
                  style: TextStyle(
                      color: colorTheme.foregroundLight,
                      fontWeight: FontWeight.w500)),
              onTap: () async {
                final agreed = await showDialog<bool>(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                            title: const Text('회원 탈퇴'),
                            content: const Text(
                                '정말 탈퇴하시겠습니까? 연관 데이터가 모두 삭제되며, 다시 복구할 수 없습니다.'),
                            actions: [
                              TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(true),
                                  child: Text('네, 탈퇴 하겠습니다.',
                                      style: textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w600))),
                              TextButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(false),
                                  child: const Text('아니오'))
                            ]));

                if (agreed == null || agreed == false) return;

                authViewModel.onEvent(const AuthEvent.deleteGoogleAccount());
                Navigator.of(context).pop();
              }),
        ]));
  }
}
