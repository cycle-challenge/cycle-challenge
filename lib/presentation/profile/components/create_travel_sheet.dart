import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:yeohaeng_ttukttak/domain/model/travel.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_event.dart';
import 'package:yeohaeng_ttukttak/presentation/profile/profile_view_model.dart';
import 'package:yeohaeng_ttukttak/presentation/travel/travel_page.dart';

class CreateTravelSheet extends StatelessWidget {
  CreateTravelSheet({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  final _nameFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    final viewModel = context.watch<ProfileViewModel>();

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
                  style: textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.w600)),
              const SizedBox(height: 18),
              FormBuilder(
                  key: _formKey,
                  initialValue: const {'visibility': 'private'},
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
                      // Text('공개 범위',
                      //     style: textTheme.bodyLarge
                      //         ?.copyWith(fontWeight: FontWeight.w600)),
                      // FormBuilderRadioGroup(
                      //     orientation: OptionsOrientation.vertical,
                      //     name: 'visibility',
                      //     disabled: const [
                      //       'public'
                      //     ],
                      //     options: [
                            // FormBuilderFieldOption(
                            //     value: 'public',
                            //     child: ListTile(
                            //       contentPadding: EdgeInsets.zero,
                            //       title: Text('공개',
                            //           style: textTheme.bodyLarge?.copyWith(
                            //               fontWeight: FontWeight.w600)),
                            //       subtitle: const Text('다른 사용자에게 내 여행을 공개합니다.'),
                            //     )),
                          //   FormBuilderFieldOption(
                          //       value: 'private',
                          //       child: ListTile(
                          //         contentPadding: EdgeInsets.zero,
                          //         title: Text('비공개',
                          //             style: textTheme.bodyLarge?.copyWith(
                          //                 fontWeight: FontWeight.w600)),
                          //         subtitle: const Text('나만 여행을 볼 수 있습니다.'),
                          //       )),
                          // ]),
                      // const SizedBox(height: 36),
                      OutlinedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: colorScheme.surface,
                            backgroundColor: colorScheme.onSurface,
                            elevation: 0,
                          ),
                          onPressed: () async {
                            final isValid =
                                _formKey.currentState?.saveAndValidate();

                            final values = _formKey.currentState?.value;

                            if (isValid == null || !isValid || values == null) {
                              return;
                            }

                            final travel = Travel(
                                name: values['name'],
                                visibility: 'private');

                            await Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => TravelPage(
                                        travel: travel, isModifying: true)));

                            viewModel.onEvent(const ProfileEvent.init());
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 48,
                            child: Center(
                                child: Text("생성하기",
                                    style: textTheme.bodyLarge?.copyWith(
                                        color: colorScheme.surface))),
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
