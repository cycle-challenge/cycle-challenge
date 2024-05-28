import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final authViewModel = context.watch<AuthViewModel>();

    return Scaffold(
        appBar: AppBar(title: Text('설정')),
        body: Theme(
          data: themeData.copyWith(
              listTileTheme: themeData.listTileTheme.copyWith(
                  titleTextStyle: textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600))),
          child: Column(children: [
            ListTile(
                title: const Text('로그아웃'),
                onTap: () {
                  authViewModel.onEvent(const AuthEvent.signOut());
                  Navigator.of(context).pop();
                }),
            ListTile(
                title: const Text('회원 탈퇴'),
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
                                    child: Text('네, 탈퇴 하겠습니다.', style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600))),
                                TextButton(
                                    onPressed: () =>
                                        Navigator.of(context).pop(false),
                                    child: const Text('아니오'))
                              ]));

                  if (agreed == null || agreed == false) return;

                  authViewModel.onEvent(const AuthEvent.deleteGoogleAccount());
                  Navigator.of(context).pop();
                }),
          ]),
        ));
  }
}
