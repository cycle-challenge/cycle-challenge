// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_sign_in_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalSignInStateImpl _$$LocalSignInStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalSignInStateImpl(
      errorMessages: (json['errorMessages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LocalSignInStateImplToJson(
        _$LocalSignInStateImpl instance) =>
    <String, dynamic>{
      'errorMessages': instance.errorMessages,
    };
