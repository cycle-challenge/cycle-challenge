// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Place {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  double get latitude => throw _privateConstructorUsedError;
  @HiveField(2)
  double get longitude => throw _privateConstructorUsedError;
  @HiveField(3)
  int get kakaoId => throw _privateConstructorUsedError;
  @HiveField(4, defaultValue: -1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(5, defaultValue: 0.0)
  double? get distance => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: '')
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(7, defaultValue: '')
  String? get address => throw _privateConstructorUsedError;
  @HiveField(8, defaultValue: '')
  String? get roadAddress => throw _privateConstructorUsedError;
  @HiveField(9, defaultValue: '')
  String? get detailUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double latitude,
      @HiveField(2) double longitude,
      @HiveField(3) int kakaoId,
      @HiveField(4, defaultValue: -1) int? id,
      @HiveField(5, defaultValue: 0.0) double? distance,
      @HiveField(6, defaultValue: '') String? phone,
      @HiveField(7, defaultValue: '') String? address,
      @HiveField(8, defaultValue: '') String? roadAddress,
      @HiveField(9, defaultValue: '') String? detailUrl});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? kakaoId = null,
    Object? id = freezed,
    Object? distance = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? roadAddress = freezed,
    Object? detailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      kakaoId: null == kakaoId
          ? _value.kakaoId
          : kakaoId // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      roadAddress: freezed == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      detailUrl: freezed == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) double latitude,
      @HiveField(2) double longitude,
      @HiveField(3) int kakaoId,
      @HiveField(4, defaultValue: -1) int? id,
      @HiveField(5, defaultValue: 0.0) double? distance,
      @HiveField(6, defaultValue: '') String? phone,
      @HiveField(7, defaultValue: '') String? address,
      @HiveField(8, defaultValue: '') String? roadAddress,
      @HiveField(9, defaultValue: '') String? detailUrl});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? kakaoId = null,
    Object? id = freezed,
    Object? distance = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? roadAddress = freezed,
    Object? detailUrl = freezed,
  }) {
    return _then(_$PlaceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      kakaoId: null == kakaoId
          ? _value.kakaoId
          : kakaoId // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      roadAddress: freezed == roadAddress
          ? _value.roadAddress
          : roadAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      detailUrl: freezed == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PlaceImpl implements _Place {
  _$PlaceImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.latitude,
      @HiveField(2) required this.longitude,
      @HiveField(3) required this.kakaoId,
      @HiveField(4, defaultValue: -1) this.id,
      @HiveField(5, defaultValue: 0.0) this.distance,
      @HiveField(6, defaultValue: '') this.phone,
      @HiveField(7, defaultValue: '') this.address,
      @HiveField(8, defaultValue: '') this.roadAddress,
      @HiveField(9, defaultValue: '') this.detailUrl});

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final double latitude;
  @override
  @HiveField(2)
  final double longitude;
  @override
  @HiveField(3)
  final int kakaoId;
  @override
  @HiveField(4, defaultValue: -1)
  final int? id;
  @override
  @HiveField(5, defaultValue: 0.0)
  final double? distance;
  @override
  @HiveField(6, defaultValue: '')
  final String? phone;
  @override
  @HiveField(7, defaultValue: '')
  final String? address;
  @override
  @HiveField(8, defaultValue: '')
  final String? roadAddress;
  @override
  @HiveField(9, defaultValue: '')
  final String? detailUrl;

  @override
  String toString() {
    return 'Place(name: $name, latitude: $latitude, longitude: $longitude, kakaoId: $kakaoId, id: $id, distance: $distance, phone: $phone, address: $address, roadAddress: $roadAddress, detailUrl: $detailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.kakaoId, kakaoId) || other.kakaoId == kakaoId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.roadAddress, roadAddress) ||
                other.roadAddress == roadAddress) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, latitude, longitude,
      kakaoId, id, distance, phone, address, roadAddress, detailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);
}

abstract class _Place implements Place {
  factory _Place(
      {@HiveField(0) required final String name,
      @HiveField(1) required final double latitude,
      @HiveField(2) required final double longitude,
      @HiveField(3) required final int kakaoId,
      @HiveField(4, defaultValue: -1) final int? id,
      @HiveField(5, defaultValue: 0.0) final double? distance,
      @HiveField(6, defaultValue: '') final String? phone,
      @HiveField(7, defaultValue: '') final String? address,
      @HiveField(8, defaultValue: '') final String? roadAddress,
      @HiveField(9, defaultValue: '') final String? detailUrl}) = _$PlaceImpl;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  double get latitude;
  @override
  @HiveField(2)
  double get longitude;
  @override
  @HiveField(3)
  int get kakaoId;
  @override
  @HiveField(4, defaultValue: -1)
  int? get id;
  @override
  @HiveField(5, defaultValue: 0.0)
  double? get distance;
  @override
  @HiveField(6, defaultValue: '')
  String? get phone;
  @override
  @HiveField(7, defaultValue: '')
  String? get address;
  @override
  @HiveField(8, defaultValue: '')
  String? get roadAddress;
  @override
  @HiveField(9, defaultValue: '')
  String? get detailUrl;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
