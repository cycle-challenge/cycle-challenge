import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/main.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool _hasAgreedTerms = false;

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorTheme;
    final textTheme = Theme.of(context).textTheme;

    final viewModel = context.watch<MainViewModel>();

    return Container(
      color: colorTheme.background,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
          child: Scaffold(
              body: Theme(
                  data: Theme.of(context).copyWith(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      listTileTheme: Theme.of(context).listTileTheme.copyWith(
                            contentPadding: EdgeInsets.zero,
                            titleTextStyle: textTheme.bodyLarge,
                          )),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('이용 약관 안내',
                            style: textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.w600)),
                        // const SizedBox(height: 8),
                        CheckboxListTile(
                            value: _hasAgreedTerms,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (newValue) {
                              if (newValue == null) return;
                              setState(() => _hasAgreedTerms = newValue);
                            },
                            title: Text(
                              '필수 약관을 확인 하였으며, 모두 동의합니다.',
                              style: textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w600),
                            )),
                        const Divider(),
                        ListTile(
                            title: const Text('여행뚝딱 이용약관'),
                            trailing: IconButton(
                              icon: const Icon(Icons.chevron_right),
                              onPressed: () => launchUrl(Uri.parse(
                                  'https://yeohaeng-ttukttak.notion.site/a18a75c8ea66411fa8978b0c10434bc5?pvs=4')),
                            )),
                        ListTile(
                            title: const Text('위치기반서비스 이용약관'),
                            trailing: IconButton(
                              icon: const Icon(Icons.chevron_right),
                              onPressed: () => launchUrl(Uri.parse(
                                  'https://yeohaeng-ttukttak.notion.site/2d7f14384beb474dadc9e60b32465ae8?pvs=4')),
                            )),
                        ListTile(
                            title: const Text('개인정보 처리지침'),
                            trailing: IconButton(
                              icon: const Icon(Icons.chevron_right),
                              onPressed: () => launchUrl(Uri.parse(
                                  'https://yeohaeng-ttukttak.notion.site/a15bfaf0fea64a0a94a2c2d567984f4a?pvs=4')),
                            )),
                        const SizedBox(height: 48),
                        Text(
                            "이용 약관에 동의하지 않을 경우 서비스 이용이 제한됩니다. 로그인 화면 하단에서 '동의 여부 변경하기'으로 서비스 동의 여부를 변경할 수 있습니다. ",
                            style: textTheme.bodySmall
                                ?.copyWith(color: colorTheme.foregroundLight)),
                        const SizedBox(height: 32),
                      ])),
              bottomNavigationBar: SafeArea(
                  child: FilledButton(
                      onPressed: _hasAgreedTerms
                          ? () => viewModel.onEvent(
                              MainEvent.changeHasAgreedTerms(_hasAgreedTerms))
                          : null,
                      child: const Text('시작하기')))),
        ),
      ),
    );
  }
}
