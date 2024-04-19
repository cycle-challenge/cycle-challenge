// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalSignUpState _$LocalSignUpStateFromJson(Map<String, dynamic> json) {
  return _LocalSignUpState.fromJson(json);
}

/// @nodoc
mixin _$LocalSignUpState {
  List<String> get errorMessages => throw _privateConstructorUsedError;
  bool get verifyStarted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalSignUpStateCopyWith<LocalSignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalSignUpStateCopyWith<$Res> {
  factory $LocalSignUpStateCopyWith(
          LocalSignUpState value, $Res Function(LocalSignUpState) then) =
      _$LocalSignUpStateCopyWithImpl<$Res, LocalSignUpState>;
  @useResult
  $Res call({List<String> errorMessages, bool verifyStarted});
}

/// @nodoc
class _$LocalSignUpStateCopyWithImpl<$Res, $Val extends LocalSignUpState>
    implements $LocalSignUpStateCopyWith<$Res> {
  _$LocalSignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessages = null,
    Object? verifyStarted = null,
  }) {
    return _then(_value.copyWith(
      errorMessages: null == errorMessages
          ? _value.errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      verifyStarted: null == verifyStarted
          ? _value.verifyStarted
          : verifyStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalSignUpStateImplCopyWith<$Res>
    implements $LocalSignUpStateCopyWith<$Res> {
  factory _$$LocalSignUpStateImplCopyWith(_$LocalSignUpStateImpl value,
          $Res Function(_$LocalSignUpStateImpl) then) =
      __$$LocalSignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> errorMessages, bool verifyStarted});
}

/// @nodoc
class __$$LocalSignUpStateImplCopyWithImpl<$Res>
    extends _$LocalSignUpStateCopyWithImpl<$Res, _$LocalSignUpStateImpl>
    implements _$$LocalSignUpStateImplCopyWith<$Res> {
  __$$LocalSignUpStateImplCopyWithImpl(_$LocalSignUpStateImpl _value,
      $Res Function(_$LocalSignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessages = null,
    Object? verifyStarted = null,
  }) {
    return _then(_$LocalSignUpStateImpl(
      errorMessages: null == errorMessages
          ? _value._errorMessages
          : errorMessages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      verifyStarted: null == verifyStarted
          ? _value.verifyStarted
          : verifyStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalSignUpStateImpl implements _LocalSignUpState {
  _$LocalSignUpStateImpl(
      {final List<String> errorMessages = const [], this.verifyStarted = false})
      : _errorMessages = errorMessages;

  factory _$LocalSignUpStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalSignUpStateImplFromJson(json);

  final List<String> _errorMessages;
  @override
  @JsonKey()
  List<String> get errorMessages {
    if (_errorMessages is EqualUnmodifiableListView) return _errorMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errorMessages);
  }

  @override
  @JsonKey()
  final bool verifyStarted;

  @override
  String toString() {
    return 'LocalSignUpState(errorMessages: $errorMessages, verifyStarted: $verifyStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalSignUpStateImpl &&
            const DeepCollectionEquality()
                .equals(other._errorMessages, _errorMessages) &&
            (identical(other.verifyStarted, verifyStarted) ||
                other.verifyStarted == verifyStarted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_errorMessages), verifyStarted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalSignUpStateImplCopyWith<_$LocalSignUpStateImpl> get copyWith =>
      __$$LocalSignUpStateImplCopyWithImpl<_$LocalSignUpStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalSignUpStateImplToJson(
      this,
    );
  }
}

abstract class _LocalSignUpState implements LocalSignUpState {
  factory _LocalSignUpState(
      {final List<String> errorMessages,
      final bool verifyStarted}) = _$LocalSignUpStateImpl;

  factory _LocalSignUpState.fromJson(Map<String, dynamic> json) =
      _$LocalSignUpStateImpl.fromJson;

  @override
  List<String> get errorMessages;
  @override
  bool get verifyStarted;
  @override
  @JsonKey(ignore: true)
  _$$LocalSignUpStateImplCopyWith<_$LocalSignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
