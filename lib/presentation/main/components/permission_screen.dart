import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';

class PermissionScreen extends StatelessWidget {
  const PermissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    final colorTheme = Theme.of(context).colorTheme;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
        child: Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('앱 접근 권한 안내',
                      style: textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.w600)),
                  const Text('여행뚝딱 서비스의 원활한 사용을 위한 권한을 안내합니다.'),
                  const SizedBox(height: 24),
                  const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.place_outlined),
                      title: Text('위치 (선택)'),
                      subtitle: Text('주변 관광지, 여행 찾기에서 사용')),
                  const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.phone_outlined),
                      title: Text('전화 (선택)'),
                      subtitle: Text('관광지 연락 기능에서 사용')),
                  const SizedBox(height: 48),
                  Text(
                      '상기 권한 제공을 거부할 수 있으며 거부 시에도 서비스 이용이 가능합니다. 단, 일부 편의 기능 사용이 제한될 수 있습니다.',
                      style: textTheme.bodySmall
                          ?.copyWith(color: colorTheme.foregroundLight)),
                  const SizedBox(height: 32),
                ]),
            bottomNavigationBar: FilledButton(
                onPressed: () => viewModel
                    .onEvent(const MainEvent.changeHasCheckedPermissions(true)),
                child: const Text('시작하기'))),
      ),
    );
  }
}
