// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalSignInState _$LocalSignInStateFromJson(Map<String, dynamic> json) {
  return _LocalSignInState.fromJson(json);
}

/// @nodoc
mixin _$LocalSignInState {
  List<String> get errorMessages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalSignInStateCopyWith<LocalSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSignInStateCopyWith<$Res> {
  factory $LocalSignInStateCopyWith(
          LocalSignInState value, $Res Function(LocalSignInState) then) =
      _$LocalSignInStateCopyWithImpl<$Res, LocalSignInState>;
  @useResult
  $Res call({List<String> errorMessages});
}

/// @nodoc
class _$LocalSignInStateCopyWithImpl<$Res, $Val extends LocalSignInState>
    implements $LocalSignInStateCopyWith<$Res> {
  _$LocalSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessages = null,
  }) {
    return _then(_value.copyWith(
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSignInStateImplCopyWith<$Res>
    implements $LocalSignInStateCopyWith<$Res> {
  factory _$$LocalSignInStateImplCopyWith(_$LocalSignInStateImpl value,
          $Res Function(_$LocalSignInStateImpl) then) =
      __$$LocalSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> errorMessages});
}

/// @nodoc
class __$$LocalSignInStateImplCopyWithImpl<$Res>
    extends _$LocalSignInStateCopyWithImpl<$Res, _$LocalSignInStateImpl>
    implements _$$LocalSignInStateImplCopyWith<$Res> {
  __$$LocalSignInStateImplCopyWithImpl(_$LocalSignInStateImpl _value,
      $Res Function(_$LocalSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessages = null,
  }) {
    return _then(_$LocalSignInStateImpl(
      errorMessages: null == errorMessages
          ? _value._errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalSignInStateImpl implements _LocalSignInState {
  _$LocalSignInStateImpl({final List<String> errorMessages = const []})
      : _errorMessages = errorMessages;

  factory _$LocalSignInStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalSignInStateImplFromJson(json);

  final List<String> _errorMessages;
  @override
  @JsonKey()
  List<String> get errorMessages {
    if (_errorMessages is EqualUnmodifiableListView) return _errorMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorMessages);
  }

  @override
  String toString() {
    return 'LocalSignInState(errorMessages: $errorMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignInStateImpl &&
            const DeepCollectionEquality()
                .equals(other._errorMessages, _errorMessages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_errorMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignInStateImplCopyWith<_$LocalSignInStateImpl> get copyWith =>
      __$$LocalSignInStateImplCopyWithImpl<_$LocalSignInStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalSignInStateImplToJson(
      this,
    );
  }
}

abstract class _LocalSignInState implements LocalSignInState {
  factory _LocalSignInState({final List<String> errorMessages}) =
      _$LocalSignInStateImpl;

  factory _LocalSignInState.fromJson(Map<String, dynamic> json) =
      _$LocalSignInStateImpl.fromJson;

  @override
  List<String> get errorMessages;
  @override
  @JsonKey(ignore: true)
  _$$LocalSignInStateImplCopyWith<_$LocalSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
