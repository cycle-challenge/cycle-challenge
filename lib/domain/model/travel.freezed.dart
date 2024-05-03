// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
mixin _$Travel {
  String get name => throw _privateConstructorUsedError;
  String get visibility => throw _privateConstructorUsedError;
  Set<TravelPeriod> get seasons => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: Image.fromJson)
  Image? get thumbnail => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
  TravelMotivation? get motivation => throw _privateConstructorUsedError;
  @JsonKey(
      includeIfNull: false, name: 'accompanyType', fromJson: TravelAccompany.of)
  TravelAccompany? get accompany => throw _privateConstructorUsedError;
  @JsonKey(
      includeIfNull: false, name: 'transportType', fromJson: TravelTransport.of)
  TravelTransport? get transport => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
  TravelAgeGroup? get ageGroup => throw _privateConstructorUsedError;
  @NestedJsonKey(name: 'member/nickname')
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
  List<Place> get places => throw _privateConstructorUsedError;
  DateTime? get statedOn => throw _privateConstructorUsedError;
  DateTime? get endedOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res, Travel>;
  @useResult
  $Res call(
      {String name,
      String visibility,
      Set<TravelPeriod> seasons,
      @JsonKey(includeIfNull: false, fromJson: Image.fromJson) Image? thumbnail,
      int? id,
      @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
      TravelMotivation? motivation,
      @JsonKey(
          includeIfNull: false,
          name: 'accompanyType',
          fromJson: TravelAccompany.of)
      TravelAccompany? accompany,
      @JsonKey(
          includeIfNull: false,
          name: 'transportType',
          fromJson: TravelTransport.of)
      TravelTransport? transport,
      @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
      TravelAgeGroup? ageGroup,
      @NestedJsonKey(name: 'member/nickname') String? nickname,
      @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
      List<Place> places,
      DateTime? statedOn,
      DateTime? endedOn});

  $ImageCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$TravelCopyWithImpl<$Res, $Val extends Travel>
    implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? visibility = null,
    Object? seasons = null,
    Object? thumbnail = freezed,
    Object? id = freezed,
    Object? motivation = freezed,
    Object? accompany = freezed,
    Object? transport = freezed,
    Object? ageGroup = freezed,
    Object? nickname = freezed,
    Object? places = null,
    Object? statedOn = freezed,
    Object? endedOn = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as Set<TravelPeriod>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Image?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      motivation: freezed == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as TravelMotivation?,
      accompany: freezed == accompany
          ? _value.accompany
          : accompany // ignore: cast_nullable_to_non_nullable
              as TravelAccompany?,
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as TravelTransport?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as TravelAgeGroup?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      statedOn: freezed == statedOn
          ? _value.statedOn
          : statedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedOn: freezed == endedOn
          ? _value.endedOn
          : endedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelImplCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$$TravelImplCopyWith(
          _$TravelImpl value, $Res Function(_$TravelImpl) then) =
      __$$TravelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String visibility,
      Set<TravelPeriod> seasons,
      @JsonKey(includeIfNull: false, fromJson: Image.fromJson) Image? thumbnail,
      int? id,
      @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
      TravelMotivation? motivation,
      @JsonKey(
          includeIfNull: false,
          name: 'accompanyType',
          fromJson: TravelAccompany.of)
      TravelAccompany? accompany,
      @JsonKey(
          includeIfNull: false,
          name: 'transportType',
          fromJson: TravelTransport.of)
      TravelTransport? transport,
      @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
      TravelAgeGroup? ageGroup,
      @NestedJsonKey(name: 'member/nickname') String? nickname,
      @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
      List<Place> places,
      DateTime? statedOn,
      DateTime? endedOn});

  @override
  $ImageCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$TravelImplCopyWithImpl<$Res>
    extends _$TravelCopyWithImpl<$Res, _$TravelImpl>
    implements _$$TravelImplCopyWith<$Res> {
  __$$TravelImplCopyWithImpl(
      _$TravelImpl _value, $Res Function(_$TravelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? visibility = null,
    Object? seasons = null,
    Object? thumbnail = freezed,
    Object? id = freezed,
    Object? motivation = freezed,
    Object? accompany = freezed,
    Object? transport = freezed,
    Object? ageGroup = freezed,
    Object? nickname = freezed,
    Object? places = null,
    Object? statedOn = freezed,
    Object? endedOn = freezed,
  }) {
    return _then(_$TravelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String,
      seasons: null == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as Set<TravelPeriod>,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as Image?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      motivation: freezed == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as TravelMotivation?,
      accompany: freezed == accompany
          ? _value.accompany
          : accompany // ignore: cast_nullable_to_non_nullable
              as TravelAccompany?,
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as TravelTransport?,
      ageGroup: freezed == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as TravelAgeGroup?,
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      statedOn: freezed == statedOn
          ? _value.statedOn
          : statedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedOn: freezed == endedOn
          ? _value.endedOn
          : endedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelImpl implements _Travel {
  _$TravelImpl(
      {required this.name,
      this.visibility = 'public',
      final Set<TravelPeriod> seasons = const {},
      @JsonKey(includeIfNull: false, fromJson: Image.fromJson) this.thumbnail,
      this.id,
      @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
      this.motivation,
      @JsonKey(
          includeIfNull: false,
          name: 'accompanyType',
          fromJson: TravelAccompany.of)
      this.accompany,
      @JsonKey(
          includeIfNull: false,
          name: 'transportType',
          fromJson: TravelTransport.of)
      this.transport,
      @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
      this.ageGroup,
      @NestedJsonKey(name: 'member/nickname') this.nickname,
      @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
      final List<Place> places = const [],
      this.statedOn,
      this.endedOn})
      : _seasons = seasons,
        _places = places;

  factory _$TravelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String visibility;
  final Set<TravelPeriod> _seasons;
  @override
  @JsonKey()
  Set<TravelPeriod> get seasons {
    if (_seasons is EqualUnmodifiableSetView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_seasons);
  }

  @override
  @JsonKey(includeIfNull: false, fromJson: Image.fromJson)
  final Image? thumbnail;
  @override
  final int? id;
  @override
  @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
  final TravelMotivation? motivation;
  @override
  @JsonKey(
      includeIfNull: false, name: 'accompanyType', fromJson: TravelAccompany.of)
  final TravelAccompany? accompany;
  @override
  @JsonKey(
      includeIfNull: false, name: 'transportType', fromJson: TravelTransport.of)
  final TravelTransport? transport;
  @override
  @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
  final TravelAgeGroup? ageGroup;
  @override
  @NestedJsonKey(name: 'member/nickname')
  final String? nickname;
  final List<Place> _places;
  @override
  @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  final DateTime? statedOn;
  @override
  final DateTime? endedOn;

  @override
  String toString() {
    return 'Travel(name: $name, visibility: $visibility, seasons: $seasons, thumbnail: $thumbnail, id: $id, motivation: $motivation, accompany: $accompany, transport: $transport, ageGroup: $ageGroup, nickname: $nickname, places: $places, statedOn: $statedOn, endedOn: $endedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.motivation, motivation) ||
                other.motivation == motivation) &&
            (identical(other.accompany, accompany) ||
                other.accompany == accompany) &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.statedOn, statedOn) ||
                other.statedOn == statedOn) &&
            (identical(other.endedOn, endedOn) || other.endedOn == endedOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      visibility,
      const DeepCollectionEquality().hash(_seasons),
      thumbnail,
      id,
      motivation,
      accompany,
      transport,
      ageGroup,
      nickname,
      const DeepCollectionEquality().hash(_places),
      statedOn,
      endedOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      __$$TravelImplCopyWithImpl<_$TravelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelImplToJson(
      this,
    );
  }
}

abstract class _Travel implements Travel {
  factory _Travel(
      {required final String name,
      final String visibility,
      final Set<TravelPeriod> seasons,
      @JsonKey(includeIfNull: false, fromJson: Image.fromJson)
      final Image? thumbnail,
      final int? id,
      @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
      final TravelMotivation? motivation,
      @JsonKey(
          includeIfNull: false,
          name: 'accompanyType',
          fromJson: TravelAccompany.of)
      final TravelAccompany? accompany,
      @JsonKey(
          includeIfNull: false,
          name: 'transportType',
          fromJson: TravelTransport.of)
      final TravelTransport? transport,
      @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
      final TravelAgeGroup? ageGroup,
      @NestedJsonKey(name: 'member/nickname') final String? nickname,
      @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
      final List<Place> places,
      final DateTime? statedOn,
      final DateTime? endedOn}) = _$TravelImpl;

  factory _Travel.fromJson(Map<String, dynamic> json) = _$TravelImpl.fromJson;

  @override
  String get name;
  @override
  String get visibility;
  @override
  Set<TravelPeriod> get seasons;
  @override
  @JsonKey(includeIfNull: false, fromJson: Image.fromJson)
  Image? get thumbnail;
  @override
  int? get id;
  @override
  @JsonKey(includeIfNull: false, fromJson: TravelMotivation.of)
  TravelMotivation? get motivation;
  @override
  @JsonKey(
      includeIfNull: false, name: 'accompanyType', fromJson: TravelAccompany.of)
  TravelAccompany? get accompany;
  @override
  @JsonKey(
      includeIfNull: false, name: 'transportType', fromJson: TravelTransport.of)
  TravelTransport? get transport;
  @override
  @NestedJsonKey(name: 'member/ageGroup', fromJson: TravelAgeGroup.of)
  TravelAgeGroup? get ageGroup;
  @override
  @NestedJsonKey(name: 'member/nickname')
  String? get nickname;
  @override
  @JsonKey(includeIfNull: false, fromJson: Travel._placesFromJson)
  List<Place> get places;
  @override
  DateTime? get statedOn;
  @override
  DateTime? get endedOn;
  @override
  @JsonKey(ignore: true)
  _$$TravelImplCopyWith<_$TravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
