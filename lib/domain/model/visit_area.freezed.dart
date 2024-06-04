// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VisitArea {
  double get swLat => throw _privateConstructorUsedError;
  double get swLon => throw _privateConstructorUsedError;
  double get neLat => throw _privateConstructorUsedError;
  double get neLon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VisitAreaCopyWith<VisitArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitAreaCopyWith<$Res> {
  factory $VisitAreaCopyWith(VisitArea value, $Res Function(VisitArea) then) =
      _$VisitAreaCopyWithImpl<$Res, VisitArea>;
  @useResult
  $Res call({double swLat, double swLon, double neLat, double neLon});
}

/// @nodoc
class _$VisitAreaCopyWithImpl<$Res, $Val extends VisitArea>
    implements $VisitAreaCopyWith<$Res> {
  _$VisitAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swLat = null,
    Object? swLon = null,
    Object? neLat = null,
    Object? neLon = null,
  }) {
    return _then(_value.copyWith(
      swLat: null == swLat
          ? _value.swLat
          : swLat // ignore: cast_nullable_to_non_nullable
              as double,
      swLon: null == swLon
          ? _value.swLon
          : swLon // ignore: cast_nullable_to_non_nullable
              as double,
      neLat: null == neLat
          ? _value.neLat
          : neLat // ignore: cast_nullable_to_non_nullable
              as double,
      neLon: null == neLon
          ? _value.neLon
          : neLon // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisitAreaImplCopyWith<$Res>
    implements $VisitAreaCopyWith<$Res> {
  factory _$$VisitAreaImplCopyWith(
          _$VisitAreaImpl value, $Res Function(_$VisitAreaImpl) then) =
      __$$VisitAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double swLat, double swLon, double neLat, double neLon});
}

/// @nodoc
class __$$VisitAreaImplCopyWithImpl<$Res>
    extends _$VisitAreaCopyWithImpl<$Res, _$VisitAreaImpl>
    implements _$$VisitAreaImplCopyWith<$Res> {
  __$$VisitAreaImplCopyWithImpl(
      _$VisitAreaImpl _value, $Res Function(_$VisitAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swLat = null,
    Object? swLon = null,
    Object? neLat = null,
    Object? neLon = null,
  }) {
    return _then(_$VisitAreaImpl(
      swLat: null == swLat
          ? _value.swLat
          : swLat // ignore: cast_nullable_to_non_nullable
              as double,
      swLon: null == swLon
          ? _value.swLon
          : swLon // ignore: cast_nullable_to_non_nullable
              as double,
      neLat: null == neLat
          ? _value.neLat
          : neLat // ignore: cast_nullable_to_non_nullable
              as double,
      neLon: null == neLon
          ? _value.neLon
          : neLon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$VisitAreaImpl implements _VisitArea {
  _$VisitAreaImpl(
      {required this.swLat,
      required this.swLon,
      required this.neLat,
      required this.neLon});

  @override
  final double swLat;
  @override
  final double swLon;
  @override
  final double neLat;
  @override
  final double neLon;

  @override
  String toString() {
    return 'VisitArea(swLat: $swLat, swLon: $swLon, neLat: $neLat, neLon: $neLon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitAreaImpl &&
            (identical(other.swLat, swLat) || other.swLat == swLat) &&
            (identical(other.swLon, swLon) || other.swLon == swLon) &&
            (identical(other.neLat, neLat) || other.neLat == neLat) &&
            (identical(other.neLon, neLon) || other.neLon == neLon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, swLat, swLon, neLat, neLon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitAreaImplCopyWith<_$VisitAreaImpl> get copyWith =>
      __$$VisitAreaImplCopyWithImpl<_$VisitAreaImpl>(this, _$identity);
}

abstract class _VisitArea implements VisitArea {
  factory _VisitArea(
      {required final double swLat,
      required final double swLon,
      required final double neLat,
      required final double neLon}) = _$VisitAreaImpl;

  @override
  double get swLat;
  @override
  double get swLon;
  @override
  double get neLat;
  @override
  double get neLon;
  @override
  @JsonKey(ignore: true)
  _$$VisitAreaImplCopyWith<_$VisitAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
