import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/data/repositories/auth_repository.dart';
import 'package:yeohaeng_ttukttak/domain/model/member.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/auth_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/components/form_errors.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/components/loading_dialog.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_event.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_in/local_sign_in_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_sheet.dart';
import 'package:yeohaeng_ttukttak/presentation/auth/local_sign_up/local_sign_up_view_model.dart';

class LocalSignInSheet extends StatefulWidget {
  const LocalSignInSheet({super.key});

  @override
  State<LocalSignInSheet> createState() => _LocalSignInSheetState();
}

class _LocalSignInSheetState extends State<LocalSignInSheet> {
  StreamSubscription? _subscription;
  final _formKey = GlobalKey<FormBuilderState>();
  final _emailFieldKey = GlobalKey<FormBuilderFieldState>();
  final _passwordFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  void dispose() {
    super.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
    _subscription?.cancel();
  }

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<LocalSignInViewModel>();
      _subscription = viewModel.stream.listen((event) => event.when(
          showInputError: _onShowInputError,
          success: _onSuccess,
          loading: _onLoading));
    });
  }

  void _onSuccess(Member member) {
    while (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }

    final authViewModel = context.read<AuthViewModel>();
    authViewModel.onEvent(AuthEvent.signIn(member));
  }

  void _onShowInputError(target, message) {
    _formKey.currentState?.fields[target]?.invalidate(message);
  }

  void _onLoading(bool isSubmitting) {
    showDialog(context: context, builder: (context) => const LoadingDialog());

    Future.delayed(const Duration(seconds: 1),
        () => {if (mounted) Navigator.of(context).pop()});
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LocalSignInViewModel>();
    final state = viewModel.state;

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: FormBuilder(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.fromLTRB(36, 36, 36, 60),
            width: MediaQuery.of(context).size.width,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("이메일 로그인",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _emailFieldKey,
                  name: 'email',
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose(
                      [FormBuilderValidators.required()]),
                  decoration: const InputDecoration(
                      labelText: "이메일", hintText: "이메일(E-mail)을 입력하세요.")),
              const SizedBox(height: 28),
              FormBuilderTextField(
                  key: _passwordFieldKey,
                  name: 'password',
                  textInputAction: TextInputAction.next,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "비밀번호",
                    hintText: "비밀번호를 입력하세요.",
                  )),
              const SizedBox(height: 24),
              FormErrors(errorMessages: state.errorMessages),
              OutlinedButton(
                  onPressed: () {
                    final isValid = _formKey.currentState?.saveAndValidate();

                    if (isValid == null || !isValid) return;

                    final values = _formKey.currentState?.value;
                    viewModel.onEvent(LocalSignInEvent.signIn(
                        values?['email'], values?['password']));
                  },
                  child: SizedBox(
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
                  onTap: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                        isScrollControlled: true,
                        useSafeArea: true,
                        context: context,
                        builder: (context) => ChangeNotifierProvider(
                            create: (context) => LocalSignUpViewModel(
                                context.read<AuthRepository>()),
                            child: const LocalSignUpSheet()));
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "처음 이신가요? ",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.outline)),
                    TextSpan(
                        text: "회원가입",
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
