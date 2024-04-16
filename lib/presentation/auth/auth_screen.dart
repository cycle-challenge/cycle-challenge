import 'package:flutter/material.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/components/local_sign_in_sheet.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [
                Text("여행뚝딱.",
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontFamily: 'Jalnan_2',
                        )),
                Text("1만 6천 데이터로 알아보는 여행 계획",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(fontWeight: FontWeight.w600))
              ]),
              Column(children: [
                OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      constraints:
                          const BoxConstraints(minWidth: 180, maxWidth: 280),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/image/google_logo.png",
                              width: 24, height: 24),
                          const Flexible(
                              child: Center(child: Text("Google로 계속하기"))),
                        ],
                      ),
                    )),
                const SizedBox(height: 12),
                OutlinedButton(
                    onPressed: () => showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: const LocalSignInSheet(),
                          ),
                        ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      constraints:
                          const BoxConstraints(minWidth: 180, maxWidth: 280),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.email_outlined),
                          Flexible(child: Center(child: Text("이메일로 로그인"))),
                        ],
                      ),
                    )),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
