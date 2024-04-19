// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_sign_up_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalSignUpStateImpl _$$LocalSignUpStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalSignUpStateImpl(
      errorMessages: (json['errorMessages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      verifyStarted: json['verifyStarted'] as bool? ?? false,
    );

Map<String, dynamic> _$$LocalSignUpStateImplToJson(
        _$LocalSignUpStateImpl instance) =>
    <String, dynamic>{
      'errorMessages': instance.errorMessages,
    };
