import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/components/form_errors.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/components/loading_dialog.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/map/map_screen.dart';
import 'package:yeohaeng_ttukttak/presentation/welcome/welcome_screen.dart';

class LocalSignUpSheet extends StatefulWidget {
  const LocalSignUpSheet({super.key});

  @override
  State<LocalSignUpSheet> createState() => _LocalSignUpSheetState();
}

class _LocalSignUpSheetState extends State<LocalSignUpSheet> {
  StreamSubscription? _subscription;

  final _formKey = GlobalKey<FormBuilderState>();
  final _emailFieldKey = GlobalKey<FormBuilderFieldState>();
  final _passwordFieldKey = GlobalKey<FormBuilderFieldState>();
  final _repeatPasswordFieldKey = GlobalKey<FormBuilderFieldState>();
  final _nicknameFieldKey = GlobalKey<FormBuilderFieldState>();
  final _verificationCodeFieldKey = GlobalKey<FormBuilderFieldState>();

  String formatSeconds(int seconds) {
    Duration duration = Duration(seconds: seconds);
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    return "${twoDigits(duration.inMinutes.remainder(60))}:${twoDigits(duration.inSeconds.remainder(60))}";
  }

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<LocalSignUpViewModel>();
      _subscription = viewModel.stream.listen((event) => event.when(
          showInputError: _onShowInputError,
          success: _onSuccess,
          loading: _onLoading, verifyEmailSent: _onVerifyEmailSent));
    });
  }

  void _onVerifyEmailSent() {
    Future.delayed(const Duration(seconds: 1), () => _formKey.currentState?.fields['verificationCode']?.focus());
  }

  void _onSuccess(String nickname) {
    while (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MapScreen()));

    _showSnackBar("$nickname님 가입을 축하합니다.");
  }


  void _showSnackBar(String message) {
    final snackBar = SnackBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        content: Text(message, style: Theme.of(context).textTheme.bodyLarge));

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _onShowInputError(target, message) {
    _formKey.currentState?.fields[target]?.invalidate(message);
  }

  void _onLoading(bool isSubmitting) {
    showDialog(context: context, builder: (context) => const LoadingDialog());

    Future.delayed(
        const Duration(seconds: 1), () => {
      if (mounted) Navigator.of(context).pop()
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    FocusManager.instance.primaryFocus?.unfocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LocalSignUpViewModel>();
    final state = viewModel.state;

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: FormBuilder(
          key: _formKey,
          onChanged: () => _formKey.currentState?.save(),
          child: Container(
            padding: const EdgeInsets.fromLTRB(36, 36, 36, 60),
            width: MediaQuery.of(context).size.width,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("이메일 회원가입",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _emailFieldKey,
                  name: 'email',
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email()
                  ]),
                  decoration: InputDecoration(
                      labelText: "이메일",
                      hintText: "이메일(E-mail)을 입력하세요.",
                      suffixIcon: IconButton(
                          onPressed: () => viewModel.onEvent(
                              LocalSignUpEvent.verifyEmail(
                                  _formKey.currentState?.value['email'])),
                          icon: const Icon(Icons.send)))),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _verificationCodeFieldKey,
                  name: 'verificationCode',
                  enabled: viewModel.state.seconds > 0,
                  decoration: InputDecoration(
                      labelText: "인증번호",
                      hintText: "비밀번호를 입력하세요.",
                      suffixText: formatSeconds(viewModel.state.seconds))),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _passwordFieldKey,
                  name: 'password',
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(8),
                    FormBuilderValidators.maxLength(64),
                    (value) {
                      if (value == value?.toLowerCase()) {
                        return "대문자를 포함해야 합니다.";
                      }
                      return null;
                    },
                    FormBuilderValidators.match(".*\\d.*",
                        errorText: "숫자를 포함해야 합니다."),
                    FormBuilderValidators.match(
                        r""".*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?].*""",
                        errorText: "특수 문자를 포함해야 합니다.")
                  ]),
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "비밀번호",
                    hintText: "비밀번호를 입력하세요.",
                  )),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _repeatPasswordFieldKey,
                  name: 'repeatPassword',
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      labelText: "비밀번호 재입력", hintText: "비밀번호를 입력하세요."),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.equal(
                        _formKey.currentState?.value['password'] ?? '',
                        errorText: '입력된 두 비밀번호가 다릅니다.')
                  ])),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _nicknameFieldKey,
                  name: 'nickname',
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                      labelText: "닉네임", hintText: "닉네임을 입력하세요."),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(3),
                    FormBuilderValidators.maxLength(15),
                    (value) {
                      if (value != null &&
                          !RegExp(r'/[가-힣a-zA-Z]/').hasMatch(value)) {
                        return null;
                      }
                      return "반드시 한글 혹은 영문자를 포함해야 합니다.";
                    }
                  ])),
              const SizedBox(height: 24),
              FormErrors(errorMessages: state.errorMessages),
              OutlinedButton(
                  onPressed: () {
                    final isValid = _formKey.currentState?.saveAndValidate();

                    if (isValid == null || !isValid) return;

                    final values = _formKey.currentState?.value;

                    viewModel.onEvent(LocalSignUpEvent.signUp(
                        values?['email'],
                        values?['password'],
                        values?['repeatPassword'],
                        values?['nickname'],
                        values?['verificationCode']));
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.email_outlined),
                        Flexible(child: Center(child: Text("이메일로 회원가입"))),
                      ],
                    ),
                  )),
              const SizedBox(height: 36),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);

                    showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      context: context,
                      builder: (BuildContext context) => ChangeNotifierProvider(
                          create: (context) => LocalSignInViewModel(
                              context.read<AuthRepository>()),
                          child: const LocalSignInSheet()),
                    );
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "이미 계정이 있으신가요? ",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.outline)),
                    TextSpan(
                        text: "로그인",
                        style: Theme.of(context).textTheme.bodyMedium)
                  ])),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
