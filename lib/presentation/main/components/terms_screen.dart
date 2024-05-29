import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yeohaeng_ttukttak/presentation/main/components/background_image_slider.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_event.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/main/main_view_model.dart';

class TermsScreen extends StatefulWidget {

  final BackgroundImageSlider slider;

  const TermsScreen({super.key, required this.slider});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool _hasAgreedTerms = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: widget.slider),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.75),
                    Colors.black.withOpacity(1.0)
                  ])),
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
              child: Theme(
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
                    Text("여행뚝딱.",
                        style: textTheme.headlineLarge?.copyWith(
                          fontFamily: 'Jalnan_2',
                        )),
                    CheckboxListTile(
                        value: _hasAgreedTerms,
                        contentPadding: EdgeInsets.zero,
                        onChanged: (newValue) {
                          if (newValue == null) return;
                          setState(() => _hasAgreedTerms = newValue);
                        },
                        title: Text(
                          '서비스 이용 약관에 동의합니다.',
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
                    const SizedBox(height: 32),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              disabledBackgroundColor: Colors.grey.shade600,
                              disabledForegroundColor: Colors.black),
                          onPressed: _hasAgreedTerms
                              ? () {
                                  final viewModel = context.read<MainViewModel>();
                                  viewModel.onEvent(MainEvent.changeHasAgreedTerms(_hasAgreedTerms));
                                }
                              : null,
                          child: const Text('시작하기')),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
