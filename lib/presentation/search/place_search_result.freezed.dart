// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceSearchResult {
  PlaceDetail get detail => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceSearchResultCopyWith<PlaceSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSearchResultCopyWith<$Res> {
  factory $PlaceSearchResultCopyWith(
          PlaceSearchResult value, $Res Function(PlaceSearchResult) then) =
      _$PlaceSearchResultCopyWithImpl<$Res, PlaceSearchResult>;
  @useResult
  $Res call({PlaceDetail detail, Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$PlaceSearchResultCopyWithImpl<$Res, $Val extends PlaceSearchResult>
    implements $PlaceSearchResultCopyWith<$Res> {
  _$PlaceSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as PlaceDetail,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceSearchResultImplCopyWith<$Res>
    implements $PlaceSearchResultCopyWith<$Res> {
  factory _$$PlaceSearchResultImplCopyWith(_$PlaceSearchResultImpl value,
          $Res Function(_$PlaceSearchResultImpl) then) =
      __$$PlaceSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceDetail detail, Place? place});

  @override
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$PlaceSearchResultImplCopyWithImpl<$Res>
    extends _$PlaceSearchResultCopyWithImpl<$Res, _$PlaceSearchResultImpl>
    implements _$$PlaceSearchResultImplCopyWith<$Res> {
  __$$PlaceSearchResultImplCopyWithImpl(_$PlaceSearchResultImpl _value,
      $Res Function(_$PlaceSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? place = freezed,
  }) {
    return _then(_$PlaceSearchResultImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as PlaceDetail,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class _$PlaceSearchResultImpl implements _PlaceSearchResult {
  _$PlaceSearchResultImpl({required this.detail, required this.place});

  @override
  final PlaceDetail detail;
  @override
  final Place? place;

  @override
  String toString() {
    return 'PlaceSearchResult(detail: $detail, place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSearchResultImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSearchResultImplCopyWith<_$PlaceSearchResultImpl> get copyWith =>
      __$$PlaceSearchResultImplCopyWithImpl<_$PlaceSearchResultImpl>(
          this, _$identity);
}

abstract class _PlaceSearchResult implements PlaceSearchResult {
  factory _PlaceSearchResult(
      {required final PlaceDetail detail,
      required final Place? place}) = _$PlaceSearchResultImpl;

  @override
  PlaceDetail get detail;
  @override
  Place? get place;
  @override
  @JsonKey(ignore: true)
  _$$PlaceSearchResultImplCopyWith<_$PlaceSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
