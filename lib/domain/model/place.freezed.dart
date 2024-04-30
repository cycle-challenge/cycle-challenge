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
  String get googlePlaceId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: PlaceType.of)
  PlaceType get type => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Place._imagesFromJson)
  List<Image> get images => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Place._travelsFromJson)
  List<Travel> get travels => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'location/distance')
  double? get distance => throw _privateConstructorUsedError;

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
      String googlePlaceId,
      @JsonKey(fromJson: PlaceType.of) PlaceType type,
      @JsonKey(fromJson: Place._imagesFromJson) List<Image> images,
      @JsonKey(fromJson: Place._travelsFromJson) List<Travel> travels,
      @NestedJsonKey(name: 'location/distance') double? distance});
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
    Object? googlePlaceId = null,
    Object? type = null,
    Object? images = null,
    Object? travels = null,
    Object? distance = freezed,
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
      googlePlaceId: null == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      travels: null == travels
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
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
      String googlePlaceId,
      @JsonKey(fromJson: PlaceType.of) PlaceType type,
      @JsonKey(fromJson: Place._imagesFromJson) List<Image> images,
      @JsonKey(fromJson: Place._travelsFromJson) List<Travel> travels,
      @NestedJsonKey(name: 'location/distance') double? distance});
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
    Object? googlePlaceId = null,
    Object? type = null,
    Object? images = null,
    Object? travels = null,
    Object? distance = freezed,
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
      googlePlaceId: null == googlePlaceId
          ? _value.googlePlaceId
          : googlePlaceId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlaceType,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      travels: null == travels
          ? _value._travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
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
      required this.googlePlaceId,
      @JsonKey(fromJson: PlaceType.of) required this.type,
      @JsonKey(fromJson: Place._imagesFromJson)
      final List<Image> images = const [],
      @JsonKey(fromJson: Place._travelsFromJson)
      final List<Travel> travels = const [],
      @NestedJsonKey(name: 'location/distance') this.distance})
      : _images = images,
        _travels = travels;

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
  final String googlePlaceId;
  @override
  @JsonKey(fromJson: PlaceType.of)
  final PlaceType type;
  final List<Image> _images;
  @override
  @JsonKey(fromJson: Place._imagesFromJson)
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<Travel> _travels;
  @override
  @JsonKey(fromJson: Place._travelsFromJson)
  List<Travel> get travels {
    if (_travels is EqualUnmodifiableListView) return _travels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_travels);
  }

  @override
  @NestedJsonKey(name: 'location/distance')
  final double? distance;

  @override
  String toString() {
    return 'Place(id: $id, name: $name, latitude: $latitude, longitude: $longitude, googlePlaceId: $googlePlaceId, type: $type, images: $images, travels: $travels, distance: $distance)';
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
            (identical(other.googlePlaceId, googlePlaceId) ||
                other.googlePlaceId == googlePlaceId) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._travels, _travels) &&
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
      googlePlaceId,
      type,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_travels),
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
      required final String googlePlaceId,
      @JsonKey(fromJson: PlaceType.of) required final PlaceType type,
      @JsonKey(fromJson: Place._imagesFromJson) final List<Image> images,
      @JsonKey(fromJson: Place._travelsFromJson) final List<Travel> travels,
      @NestedJsonKey(name: 'location/distance')
      final double? distance}) = _$PlaceImpl;

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
  String get googlePlaceId;
  @override
  @JsonKey(fromJson: PlaceType.of)
  PlaceType get type;
  @override
  @JsonKey(fromJson: Place._imagesFromJson)
  List<Image> get images;
  @override
  @JsonKey(fromJson: Place._travelsFromJson)
  List<Travel> get travels;
  @override
  @NestedJsonKey(name: 'location/distance')
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
