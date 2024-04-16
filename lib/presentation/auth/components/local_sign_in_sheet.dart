import 'package:flutter/material.dart';

class LocalSignInSheet extends StatelessWidget {
  const LocalSignInSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(36, 36, 36, 60),
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("회원 로그인",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 36),
          TextField(
              decoration: InputDecoration(
                  labelText: "이메일",
                  hintText: "이메일(E-mail)을 입력하세요.",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)))),
          const SizedBox(height: 36),
          TextField(
              decoration: InputDecoration(
                  labelText: "비밀번호",
                  hintText: "비밀번호를 입력하세요.",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)))),
          const SizedBox(height: 36),
          OutlinedButton(
              onPressed: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.email_outlined),
                    Flexible(child: Center(child: Text("이메일로 로그인"))),
                  ],
                ),
              )),
          const SizedBox(height: 36),
          Center(
            child: InkWell(
              onTap: () {},
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "처음 이신가요? ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Theme.of(context).colorScheme.outline)),
                    TextSpan(
                        text: "회원가입", style: Theme.of(context).textTheme.bodyMedium)
                  ])),
            ),
          )
        ]),
      ),
    );
  }
}
