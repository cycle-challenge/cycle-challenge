import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ProfileTravelView extends StatelessWidget {
  const ProfileTravelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => CreateTravelSheet(),
          isScrollControlled: true,
          useSafeArea: true,
        ),
        elevation: 0,
        icon: const Icon(Icons.edit),
        label: const Text('여행 만들기'),
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        foregroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
    );
  }
}

class CreateTravelSheet extends StatelessWidget {
  CreateTravelSheet({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  final _nameFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(36, 36, 36, 60),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("여행 만들기",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 18),
              FormBuilder(
                  key: _formKey,
                  initialValue: const {'public': 0},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FormBuilderTextField(
                          key: _nameFieldKey,
                          name: 'name',
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              labelText: "이름", hintText: "여행 이름을 입력하세요.")),
                      const SizedBox(height: 36),
                      Text('공개 범위',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w600)),
                      FormBuilderRadioGroup(
                          orientation: OptionsOrientation.vertical,
                          name: 'visibility',
                          options: [
                            FormBuilderFieldOption(
                                value: 'public',
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text('공개',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600)),
                                  subtitle: const Text('다른 사용자에게 내 여행을 공개합니다.'),
                                )),
                            FormBuilderFieldOption(
                                value: 'private',
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Text('비공개',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600)),
                                  subtitle: const Text('나만 여행을 볼 수 있습니다.'),
                                )),
                          ]),
                      const SizedBox(height: 36),
                      OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor:
                                Theme.of(context).colorScheme.surface,
                            backgroundColor:
                                Theme.of(context).colorScheme.onSurface,
                            elevation: 0,
                          ),
                          onPressed: () {
                            final isValid =
                                _formKey.currentState?.saveAndValidate();

                            if (isValid == null || !isValid) return;
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 48,
                            child: Center(
                                child: Text("생성하기",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .surface))),
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
