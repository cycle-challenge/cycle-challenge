// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Visit _$VisitFromJson(Map<String, dynamic> json) {
  return _Visit.fromJson(json);
}

/// @nodoc
mixin _$Visit {
  int? get id => throw _privateConstructorUsedError;
  int? get dayOfTravel => throw _privateConstructorUsedError;
  int? get orderOfVisit => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Place.fromJson)
  Place get place => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Visit._imagesFromJson)
  List<Image> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitCopyWith<Visit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitCopyWith<$Res> {
  factory $VisitCopyWith(Visit value, $Res Function(Visit) then) =
      _$VisitCopyWithImpl<$Res, Visit>;
  @useResult
  $Res call(
      {int? id,
      int? dayOfTravel,
      int? orderOfVisit,
      @JsonKey(fromJson: Place.fromJson) Place place,
      @JsonKey(fromJson: Visit._imagesFromJson) List<Image> images});

  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class _$VisitCopyWithImpl<$Res, $Val extends Visit>
    implements $VisitCopyWith<$Res> {
  _$VisitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dayOfTravel = freezed,
    Object? orderOfVisit = freezed,
    Object? place = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dayOfTravel: freezed == dayOfTravel
          ? _value.dayOfTravel
          : dayOfTravel // ignore: cast_nullable_to_non_nullable
              as int?,
      orderOfVisit: freezed == orderOfVisit
          ? _value.orderOfVisit
          : orderOfVisit // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisitImplCopyWith<$Res> implements $VisitCopyWith<$Res> {
  factory _$$VisitImplCopyWith(
          _$VisitImpl value, $Res Function(_$VisitImpl) then) =
      __$$VisitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? dayOfTravel,
      int? orderOfVisit,
      @JsonKey(fromJson: Place.fromJson) Place place,
      @JsonKey(fromJson: Visit._imagesFromJson) List<Image> images});

  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$VisitImplCopyWithImpl<$Res>
    extends _$VisitCopyWithImpl<$Res, _$VisitImpl>
    implements _$$VisitImplCopyWith<$Res> {
  __$$VisitImplCopyWithImpl(
      _$VisitImpl _value, $Res Function(_$VisitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dayOfTravel = freezed,
    Object? orderOfVisit = freezed,
    Object? place = null,
    Object? images = null,
  }) {
    return _then(_$VisitImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dayOfTravel: freezed == dayOfTravel
          ? _value.dayOfTravel
          : dayOfTravel // ignore: cast_nullable_to_non_nullable
              as int?,
      orderOfVisit: freezed == orderOfVisit
          ? _value.orderOfVisit
          : orderOfVisit // ignore: cast_nullable_to_non_nullable
              as int?,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisitImpl implements _Visit {
  _$VisitImpl(
      {this.id,
      this.dayOfTravel,
      this.orderOfVisit,
      @JsonKey(fromJson: Place.fromJson) required this.place,
      @JsonKey(fromJson: Visit._imagesFromJson)
      final List<Image> images = const []})
      : _images = images;

  factory _$VisitImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitImplFromJson(json);

  @override
  final int? id;
  @override
  final int? dayOfTravel;
  @override
  final int? orderOfVisit;
  @override
  @JsonKey(fromJson: Place.fromJson)
  final Place place;
  final List<Image> _images;
  @override
  @JsonKey(fromJson: Visit._imagesFromJson)
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Visit(id: $id, dayOfTravel: $dayOfTravel, orderOfVisit: $orderOfVisit, place: $place, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dayOfTravel, dayOfTravel) ||
                other.dayOfTravel == dayOfTravel) &&
            (identical(other.orderOfVisit, orderOfVisit) ||
                other.orderOfVisit == orderOfVisit) &&
            (identical(other.place, place) || other.place == place) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dayOfTravel, orderOfVisit,
      place, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitImplCopyWith<_$VisitImpl> get copyWith =>
      __$$VisitImplCopyWithImpl<_$VisitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitImplToJson(
      this,
    );
  }
}

abstract class _Visit implements Visit {
  factory _Visit(
          {final int? id,
          final int? dayOfTravel,
          final int? orderOfVisit,
          @JsonKey(fromJson: Place.fromJson) required final Place place,
          @JsonKey(fromJson: Visit._imagesFromJson) final List<Image> images}) =
      _$VisitImpl;

  factory _Visit.fromJson(Map<String, dynamic> json) = _$VisitImpl.fromJson;

  @override
  int? get id;
  @override
  int? get dayOfTravel;
  @override
  int? get orderOfVisit;
  @override
  @JsonKey(fromJson: Place.fromJson)
  Place get place;
  @override
  @JsonKey(fromJson: Visit._imagesFromJson)
  List<Image> get images;
  @override
  @JsonKey(ignore: true)
  _$$VisitImplCopyWith<_$VisitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
