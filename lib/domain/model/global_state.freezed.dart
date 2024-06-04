// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlobalState _$GlobalStateFromJson(Map<String, dynamic> json) {
  return _MainState.fromJson(json);
}

/// @nodoc
mixin _$GlobalState {
  @HiveField(0, defaultValue: false)
  bool get hasAgreedTerms => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: false)
  bool get hasCheckedPermissions => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: 'system')
  String get themeMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalStateCopyWith<GlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res, GlobalState>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: false) bool hasAgreedTerms,
      @HiveField(1, defaultValue: false) bool hasCheckedPermissions,
      @HiveField(2, defaultValue: 'system') String themeMode});
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res, $Val extends GlobalState>
    implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAgreedTerms = null,
    Object? hasCheckedPermissions = null,
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      hasAgreedTerms: null == hasAgreedTerms
          ? _value.hasAgreedTerms
          : hasAgreedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCheckedPermissions: null == hasCheckedPermissions
          ? _value.hasCheckedPermissions
          : hasCheckedPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $GlobalStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: false) bool hasAgreedTerms,
      @HiveField(1, defaultValue: false) bool hasCheckedPermissions,
      @HiveField(2, defaultValue: 'system') String themeMode});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAgreedTerms = null,
    Object? hasCheckedPermissions = null,
    Object? themeMode = null,
  }) {
    return _then(_$MainStateImpl(
      hasAgreedTerms: null == hasAgreedTerms
          ? _value.hasAgreedTerms
          : hasAgreedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCheckedPermissions: null == hasCheckedPermissions
          ? _value.hasCheckedPermissions
          : hasCheckedPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainStateImpl implements _MainState {
  _$MainStateImpl(
      {@HiveField(0, defaultValue: false) this.hasAgreedTerms = false,
      @HiveField(1, defaultValue: false) this.hasCheckedPermissions = false,
      @HiveField(2, defaultValue: 'system') this.themeMode = 'system'});

  factory _$MainStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainStateImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0, defaultValue: false)
  final bool hasAgreedTerms;
  @override
  @JsonKey()
  @HiveField(1, defaultValue: false)
  final bool hasCheckedPermissions;
  @override
  @JsonKey()
  @HiveField(2, defaultValue: 'system')
  final String themeMode;

  @override
  String toString() {
    return 'GlobalState(hasAgreedTerms: $hasAgreedTerms, hasCheckedPermissions: $hasCheckedPermissions, themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.hasAgreedTerms, hasAgreedTerms) ||
                other.hasAgreedTerms == hasAgreedTerms) &&
            (identical(other.hasCheckedPermissions, hasCheckedPermissions) ||
                other.hasCheckedPermissions == hasCheckedPermissions) &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, hasAgreedTerms, hasCheckedPermissions, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainStateImplToJson(
      this,
    );
  }
}

abstract class _MainState implements GlobalState {
  factory _MainState(
          {@HiveField(0, defaultValue: false) final bool hasAgreedTerms,
          @HiveField(1, defaultValue: false) final bool hasCheckedPermissions,
          @HiveField(2, defaultValue: 'system') final String themeMode}) =
      _$MainStateImpl;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$MainStateImpl.fromJson;

  @override
  @HiveField(0, defaultValue: false)
  bool get hasAgreedTerms;
  @override
  @HiveField(1, defaultValue: false)
  bool get hasCheckedPermissions;
  @override
  @HiveField(2, defaultValue: 'system')
  String get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
