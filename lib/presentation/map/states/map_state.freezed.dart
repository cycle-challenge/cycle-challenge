// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapState {
  bool get isShownSearchButton => throw _privateConstructorUsedError;
  bool get isDetermining => throw _privateConstructorUsedError;
  int get navigationIndex => throw _privateConstructorUsedError;
  Map<String, BitmapDescriptor> get markerIcon =>
      throw _privateConstructorUsedError;
  Map<String, BitmapDescriptor> get selectedMarkerIcon =>
      throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {bool isShownSearchButton,
      bool isDetermining,
      int navigationIndex,
      Map<String, BitmapDescriptor> markerIcon,
      Map<String, BitmapDescriptor> selectedMarkerIcon,
      double latitude,
      double longitude});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShownSearchButton = null,
    Object? isDetermining = null,
    Object? navigationIndex = null,
    Object? markerIcon = null,
    Object? selectedMarkerIcon = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      isShownSearchButton: null == isShownSearchButton
          ? _value.isShownSearchButton
          : isShownSearchButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isDetermining: null == isDetermining
          ? _value.isDetermining
          : isDetermining // ignore: cast_nullable_to_non_nullable
              as bool,
      navigationIndex: null == navigationIndex
          ? _value.navigationIndex
          : navigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      markerIcon: null == markerIcon
          ? _value.markerIcon
          : markerIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, BitmapDescriptor>,
      selectedMarkerIcon: null == selectedMarkerIcon
          ? _value.selectedMarkerIcon
          : selectedMarkerIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, BitmapDescriptor>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
          _$MapStateImpl value, $Res Function(_$MapStateImpl) then) =
      __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isShownSearchButton,
      bool isDetermining,
      int navigationIndex,
      Map<String, BitmapDescriptor> markerIcon,
      Map<String, BitmapDescriptor> selectedMarkerIcon,
      double latitude,
      double longitude});
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
      _$MapStateImpl _value, $Res Function(_$MapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShownSearchButton = null,
    Object? isDetermining = null,
    Object? navigationIndex = null,
    Object? markerIcon = null,
    Object? selectedMarkerIcon = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$MapStateImpl(
      isShownSearchButton: null == isShownSearchButton
          ? _value.isShownSearchButton
          : isShownSearchButton // ignore: cast_nullable_to_non_nullable
              as bool,
      isDetermining: null == isDetermining
          ? _value.isDetermining
          : isDetermining // ignore: cast_nullable_to_non_nullable
              as bool,
      navigationIndex: null == navigationIndex
          ? _value.navigationIndex
          : navigationIndex // ignore: cast_nullable_to_non_nullable
              as int,
      markerIcon: null == markerIcon
          ? _value._markerIcon
          : markerIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, BitmapDescriptor>,
      selectedMarkerIcon: null == selectedMarkerIcon
          ? _value._selectedMarkerIcon
          : selectedMarkerIcon // ignore: cast_nullable_to_non_nullable
              as Map<String, BitmapDescriptor>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MapStateImpl implements _MapState {
  _$MapStateImpl(
      {this.isShownSearchButton = false,
      this.isDetermining = false,
      this.navigationIndex = 0,
      final Map<String, BitmapDescriptor> markerIcon = const {},
      final Map<String, BitmapDescriptor> selectedMarkerIcon = const {},
      this.latitude = 37.6272,
      this.longitude = 127.4987})
      : _markerIcon = markerIcon,
        _selectedMarkerIcon = selectedMarkerIcon;

  @override
  @JsonKey()
  final bool isShownSearchButton;
  @override
  @JsonKey()
  final bool isDetermining;
  @override
  @JsonKey()
  final int navigationIndex;
  final Map<String, BitmapDescriptor> _markerIcon;
  @override
  @JsonKey()
  Map<String, BitmapDescriptor> get markerIcon {
    if (_markerIcon is EqualUnmodifiableMapView) return _markerIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_markerIcon);
  }

  final Map<String, BitmapDescriptor> _selectedMarkerIcon;
  @override
  @JsonKey()
  Map<String, BitmapDescriptor> get selectedMarkerIcon {
    if (_selectedMarkerIcon is EqualUnmodifiableMapView)
      return _selectedMarkerIcon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedMarkerIcon);
  }

  @override
  @JsonKey()
  final double latitude;
  @override
  @JsonKey()
  final double longitude;

  @override
  String toString() {
    return 'MapState(isShownSearchButton: $isShownSearchButton, isDetermining: $isDetermining, navigationIndex: $navigationIndex, markerIcon: $markerIcon, selectedMarkerIcon: $selectedMarkerIcon, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.isShownSearchButton, isShownSearchButton) ||
                other.isShownSearchButton == isShownSearchButton) &&
            (identical(other.isDetermining, isDetermining) ||
                other.isDetermining == isDetermining) &&
            (identical(other.navigationIndex, navigationIndex) ||
                other.navigationIndex == navigationIndex) &&
            const DeepCollectionEquality()
                .equals(other._markerIcon, _markerIcon) &&
            const DeepCollectionEquality()
                .equals(other._selectedMarkerIcon, _selectedMarkerIcon) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isShownSearchButton,
      isDetermining,
      navigationIndex,
      const DeepCollectionEquality().hash(_markerIcon),
      const DeepCollectionEquality().hash(_selectedMarkerIcon),
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);
}

abstract class _MapState implements MapState {
  factory _MapState(
      {final bool isShownSearchButton,
      final bool isDetermining,
      final int navigationIndex,
      final Map<String, BitmapDescriptor> markerIcon,
      final Map<String, BitmapDescriptor> selectedMarkerIcon,
      final double latitude,
      final double longitude}) = _$MapStateImpl;

  @override
  bool get isShownSearchButton;
  @override
  bool get isDetermining;
  @override
  int get navigationIndex;
  @override
  Map<String, BitmapDescriptor> get markerIcon;
  @override
  Map<String, BitmapDescriptor> get selectedMarkerIcon;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
