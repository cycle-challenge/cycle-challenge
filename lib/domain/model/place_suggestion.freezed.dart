// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceSuggestion _$PlaceSuggestionFromJson(Map<String, dynamic> json) {
  return _PlaceSuggestion.fromJson(json);
}

/// @nodoc
mixin _$PlaceSuggestion {
  @HiveField(0)
  int get placeId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String get localAddr => throw _privateConstructorUsedError;
  @HiveField(3)
  String get roadAddr => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceSuggestionCopyWith<PlaceSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSuggestionCopyWith<$Res> {
  factory $PlaceSuggestionCopyWith(
          PlaceSuggestion value, $Res Function(PlaceSuggestion) then) =
      _$PlaceSuggestionCopyWithImpl<$Res, PlaceSuggestion>;
  @useResult
  $Res call(
      {@HiveField(0) int placeId,
      @HiveField(1) String name,
      @HiveField(2) String localAddr,
      @HiveField(3) String roadAddr,
      @HiveField(4) DateTime? modifiedAt});
}

/// @nodoc
class _$PlaceSuggestionCopyWithImpl<$Res, $Val extends PlaceSuggestion>
    implements $PlaceSuggestionCopyWith<$Res> {
  _$PlaceSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? localAddr = null,
    Object? roadAddr = null,
    Object? modifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localAddr: null == localAddr
          ? _value.localAddr
          : localAddr // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddr: null == roadAddr
          ? _value.roadAddr
          : roadAddr // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceSuggestionImplCopyWith<$Res>
    implements $PlaceSuggestionCopyWith<$Res> {
  factory _$$PlaceSuggestionImplCopyWith(_$PlaceSuggestionImpl value,
          $Res Function(_$PlaceSuggestionImpl) then) =
      __$$PlaceSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int placeId,
      @HiveField(1) String name,
      @HiveField(2) String localAddr,
      @HiveField(3) String roadAddr,
      @HiveField(4) DateTime? modifiedAt});
}

/// @nodoc
class __$$PlaceSuggestionImplCopyWithImpl<$Res>
    extends _$PlaceSuggestionCopyWithImpl<$Res, _$PlaceSuggestionImpl>
    implements _$$PlaceSuggestionImplCopyWith<$Res> {
  __$$PlaceSuggestionImplCopyWithImpl(
      _$PlaceSuggestionImpl _value, $Res Function(_$PlaceSuggestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? localAddr = null,
    Object? roadAddr = null,
    Object? modifiedAt = freezed,
  }) {
    return _then(_$PlaceSuggestionImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localAddr: null == localAddr
          ? _value.localAddr
          : localAddr // ignore: cast_nullable_to_non_nullable
              as String,
      roadAddr: null == roadAddr
          ? _value.roadAddr
          : roadAddr // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceSuggestionImpl implements _PlaceSuggestion {
  _$PlaceSuggestionImpl(
      {@HiveField(0) required this.placeId,
      @HiveField(1) required this.name,
      @HiveField(2) required this.localAddr,
      @HiveField(3) required this.roadAddr,
      @HiveField(4) this.modifiedAt});

  factory _$PlaceSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceSuggestionImplFromJson(json);

  @override
  @HiveField(0)
  final int placeId;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final String localAddr;
  @override
  @HiveField(3)
  final String roadAddr;
  @override
  @HiveField(4)
  final DateTime? modifiedAt;

  @override
  String toString() {
    return 'PlaceSuggestion(placeId: $placeId, name: $name, localAddr: $localAddr, roadAddr: $roadAddr, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSuggestionImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localAddr, localAddr) ||
                other.localAddr == localAddr) &&
            (identical(other.roadAddr, roadAddr) ||
                other.roadAddr == roadAddr) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, name, localAddr, roadAddr, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSuggestionImplCopyWith<_$PlaceSuggestionImpl> get copyWith =>
      __$$PlaceSuggestionImplCopyWithImpl<_$PlaceSuggestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceSuggestionImplToJson(
      this,
    );
  }
}

abstract class _PlaceSuggestion implements PlaceSuggestion {
  factory _PlaceSuggestion(
      {@HiveField(0) required final int placeId,
      @HiveField(1) required final String name,
      @HiveField(2) required final String localAddr,
      @HiveField(3) required final String roadAddr,
      @HiveField(4) final DateTime? modifiedAt}) = _$PlaceSuggestionImpl;

  factory _PlaceSuggestion.fromJson(Map<String, dynamic> json) =
      _$PlaceSuggestionImpl.fromJson;

  @override
  @HiveField(0)
  int get placeId;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  String get localAddr;
  @override
  @HiveField(3)
  String get roadAddr;
  @override
  @HiveField(4)
  DateTime? get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$PlaceSuggestionImplCopyWith<_$PlaceSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
