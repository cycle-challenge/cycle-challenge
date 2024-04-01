// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceDetailState {
  bool get isBusinessHourExpanded => throw _privateConstructorUsedError;
  PlaceDetail? get placeDetail => throw _privateConstructorUsedError;
  List<ImageModel> get placeImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceDetailStateCopyWith<PlaceDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailStateCopyWith<$Res> {
  factory $PlaceDetailStateCopyWith(
          PlaceDetailState value, $Res Function(PlaceDetailState) then) =
      _$PlaceDetailStateCopyWithImpl<$Res, PlaceDetailState>;
  @useResult
  $Res call(
      {bool isBusinessHourExpanded,
      PlaceDetail? placeDetail,
      List<ImageModel> placeImages});
}

/// @nodoc
class _$PlaceDetailStateCopyWithImpl<$Res, $Val extends PlaceDetailState>
    implements $PlaceDetailStateCopyWith<$Res> {
  _$PlaceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusinessHourExpanded = null,
    Object? placeDetail = freezed,
    Object? placeImages = null,
  }) {
    return _then(_value.copyWith(
      isBusinessHourExpanded: null == isBusinessHourExpanded
          ? _value.isBusinessHourExpanded
          : isBusinessHourExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      placeDetail: freezed == placeDetail
          ? _value.placeDetail
          : placeDetail // ignore: cast_nullable_to_non_nullable
              as PlaceDetail?,
      placeImages: null == placeImages
          ? _value.placeImages
          : placeImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDetailStateImplCopyWith<$Res>
    implements $PlaceDetailStateCopyWith<$Res> {
  factory _$$PlaceDetailStateImplCopyWith(_$PlaceDetailStateImpl value,
          $Res Function(_$PlaceDetailStateImpl) then) =
      __$$PlaceDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isBusinessHourExpanded,
      PlaceDetail? placeDetail,
      List<ImageModel> placeImages});
}

/// @nodoc
class __$$PlaceDetailStateImplCopyWithImpl<$Res>
    extends _$PlaceDetailStateCopyWithImpl<$Res, _$PlaceDetailStateImpl>
    implements _$$PlaceDetailStateImplCopyWith<$Res> {
  __$$PlaceDetailStateImplCopyWithImpl(_$PlaceDetailStateImpl _value,
      $Res Function(_$PlaceDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusinessHourExpanded = null,
    Object? placeDetail = freezed,
    Object? placeImages = null,
  }) {
    return _then(_$PlaceDetailStateImpl(
      isBusinessHourExpanded: null == isBusinessHourExpanded
          ? _value.isBusinessHourExpanded
          : isBusinessHourExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      placeDetail: freezed == placeDetail
          ? _value.placeDetail
          : placeDetail // ignore: cast_nullable_to_non_nullable
              as PlaceDetail?,
      placeImages: null == placeImages
          ? _value._placeImages
          : placeImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$PlaceDetailStateImpl implements _PlaceDetailState {
  _$PlaceDetailStateImpl(
      {required this.isBusinessHourExpanded,
      required this.placeDetail,
      required final List<ImageModel> placeImages})
      : _placeImages = placeImages;

  @override
  final bool isBusinessHourExpanded;
  @override
  final PlaceDetail? placeDetail;
  final List<ImageModel> _placeImages;
  @override
  List<ImageModel> get placeImages {
    if (_placeImages is EqualUnmodifiableListView) return _placeImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeImages);
  }

  @override
  String toString() {
    return 'PlaceDetailState(isBusinessHourExpanded: $isBusinessHourExpanded, placeDetail: $placeDetail, placeImages: $placeImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailStateImpl &&
            (identical(other.isBusinessHourExpanded, isBusinessHourExpanded) ||
                other.isBusinessHourExpanded == isBusinessHourExpanded) &&
            (identical(other.placeDetail, placeDetail) ||
                other.placeDetail == placeDetail) &&
            const DeepCollectionEquality()
                .equals(other._placeImages, _placeImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBusinessHourExpanded,
      placeDetail, const DeepCollectionEquality().hash(_placeImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailStateImplCopyWith<_$PlaceDetailStateImpl> get copyWith =>
      __$$PlaceDetailStateImplCopyWithImpl<_$PlaceDetailStateImpl>(
          this, _$identity);
}

abstract class _PlaceDetailState implements PlaceDetailState {
  factory _PlaceDetailState(
      {required final bool isBusinessHourExpanded,
      required final PlaceDetail? placeDetail,
      required final List<ImageModel> placeImages}) = _$PlaceDetailStateImpl;

  @override
  bool get isBusinessHourExpanded;
  @override
  PlaceDetail? get placeDetail;
  @override
  List<ImageModel> get placeImages;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDetailStateImplCopyWith<_$PlaceDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
