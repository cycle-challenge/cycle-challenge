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

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'location/latitude')
  double get latitude => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'location/longitude')
  double get longitude => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'reviewReport/count')
  int get reviewCount => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'reviewReport/ratingAvg')
  double get reviewAvg => throw _privateConstructorUsedError;
  String get googlePlaceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'localAddress')
  String? get localAddr => throw _privateConstructorUsedError;
  @JsonKey(name: 'roadAddress')
  String? get roadAddr => throw _privateConstructorUsedError;
  @JsonKey(fromJson: PlaceType.of)
  PlaceType get type => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
  List<Image> get images => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  double get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {int id,
      String name,
      @NestedJsonKey(name: 'location/latitude') double latitude,
      @NestedJsonKey(name: 'location/longitude') double longitude,
      @NestedJsonKey(name: 'reviewReport/count') int reviewCount,
      @NestedJsonKey(name: 'reviewReport/ratingAvg') double reviewAvg,
      String googlePlaceId,
      @JsonKey(name: 'localAddress') String? localAddr,
      @JsonKey(name: 'roadAddress') String? roadAddr,
      @JsonKey(fromJson: PlaceType.of) PlaceType type,
      @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
      List<Image> images,
      @JsonKey(includeFromJson: false) double distance});
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
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? reviewCount = null,
    Object? reviewAvg = null,
    Object? googlePlaceId = null,
    Object? localAddr = freezed,
    Object? roadAddr = freezed,
    Object? type = null,
    Object? images = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: null == reviewAvg
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      googlePlaceId: null == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String,
      localAddr: freezed == localAddr
          ? _value.localAddr
          : localAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      roadAddr: freezed == roadAddr
          ? _value.roadAddr
          : roadAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
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
      {int id,
      String name,
      @NestedJsonKey(name: 'location/latitude') double latitude,
      @NestedJsonKey(name: 'location/longitude') double longitude,
      @NestedJsonKey(name: 'reviewReport/count') int reviewCount,
      @NestedJsonKey(name: 'reviewReport/ratingAvg') double reviewAvg,
      String googlePlaceId,
      @JsonKey(name: 'localAddress') String? localAddr,
      @JsonKey(name: 'roadAddress') String? roadAddr,
      @JsonKey(fromJson: PlaceType.of) PlaceType type,
      @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
      List<Image> images,
      @JsonKey(includeFromJson: false) double distance});
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
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? reviewCount = null,
    Object? reviewAvg = null,
    Object? googlePlaceId = null,
    Object? localAddr = freezed,
    Object? roadAddr = freezed,
    Object? type = null,
    Object? images = null,
    Object? distance = null,
  }) {
    return _then(_$PlaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: null == reviewAvg
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      googlePlaceId: null == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String,
      localAddr: freezed == localAddr
          ? _value.localAddr
          : localAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      roadAddr: freezed == roadAddr
          ? _value.roadAddr
          : roadAddr // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  _$PlaceImpl(
      {required this.id,
      required this.name,
      @NestedJsonKey(name: 'location/latitude') required this.latitude,
      @NestedJsonKey(name: 'location/longitude') required this.longitude,
      @NestedJsonKey(name: 'reviewReport/count') required this.reviewCount,
      @NestedJsonKey(name: 'reviewReport/ratingAvg') required this.reviewAvg,
      required this.googlePlaceId,
      @JsonKey(name: 'localAddress') this.localAddr,
      @JsonKey(name: 'roadAddress') this.roadAddr,
      @JsonKey(fromJson: PlaceType.of) required this.type,
      @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
      final List<Image> images = const [],
      @JsonKey(includeFromJson: false) this.distance = 0})
      : _images = images;

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @NestedJsonKey(name: 'location/latitude')
  final double latitude;
  @override
  @NestedJsonKey(name: 'location/longitude')
  final double longitude;
  @override
  @NestedJsonKey(name: 'reviewReport/count')
  final int reviewCount;
  @override
  @NestedJsonKey(name: 'reviewReport/ratingAvg')
  final double reviewAvg;
  @override
  final String googlePlaceId;
  @override
  @JsonKey(name: 'localAddress')
  final String? localAddr;
  @override
  @JsonKey(name: 'roadAddress')
  final String? roadAddr;
  @override
  @JsonKey(fromJson: PlaceType.of)
  final PlaceType type;
  final List<Image> _images;
  @override
  @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(includeFromJson: false)
  final double distance;

  @override
  String toString() {
    return 'Place(id: $id, name: $name, latitude: $latitude, longitude: $longitude, reviewCount: $reviewCount, reviewAvg: $reviewAvg, googlePlaceId: $googlePlaceId, localAddr: $localAddr, roadAddr: $roadAddr, type: $type, images: $images, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.reviewAvg, reviewAvg) ||
                other.reviewAvg == reviewAvg) &&
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.localAddr, localAddr) ||
                other.localAddr == localAddr) &&
            (identical(other.roadAddr, roadAddr) ||
                other.roadAddr == roadAddr) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      latitude,
      longitude,
      reviewCount,
      reviewAvg,
      googlePlaceId,
      localAddr,
      roadAddr,
      type,
      const DeepCollectionEquality().hash(_images),
      distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  factory _Place(
      {required final int id,
      required final String name,
      @NestedJsonKey(name: 'location/latitude') required final double latitude,
      @NestedJsonKey(name: 'location/longitude')
      required final double longitude,
      @NestedJsonKey(name: 'reviewReport/count') required final int reviewCount,
      @NestedJsonKey(name: 'reviewReport/ratingAvg')
      required final double reviewAvg,
      required final String googlePlaceId,
      @JsonKey(name: 'localAddress') final String? localAddr,
      @JsonKey(name: 'roadAddress') final String? roadAddr,
      @JsonKey(fromJson: PlaceType.of) required final PlaceType type,
      @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
      final List<Image> images,
      @JsonKey(includeFromJson: false) final double distance}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @NestedJsonKey(name: 'location/latitude')
  double get latitude;
  @override
  @NestedJsonKey(name: 'location/longitude')
  double get longitude;
  @override
  @NestedJsonKey(name: 'reviewReport/count')
  int get reviewCount;
  @override
  @NestedJsonKey(name: 'reviewReport/ratingAvg')
  double get reviewAvg;
  @override
  String get googlePlaceId;
  @override
  @JsonKey(name: 'localAddress')
  String? get localAddr;
  @override
  @JsonKey(name: 'roadAddress')
  String? get roadAddr;
  @override
  @JsonKey(fromJson: PlaceType.of)
  PlaceType get type;
  @override
  @JsonKey(includeIfNull: false, fromJson: Place._imagesFromJson)
  List<Image> get images;
  @override
  @JsonKey(includeFromJson: false)
  double get distance;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
