// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelState {
  Travel get travel => throw _privateConstructorUsedError;
  List<VisitDisplayType> get items => throw _privateConstructorUsedError;
  int get visitIndex => throw _privateConstructorUsedError;
  double get panelHeight => throw _privateConstructorUsedError;
  bool get isCameraMoved => throw _privateConstructorUsedError;
  List<VisitArea> get partialAreas => throw _privateConstructorUsedError;
  VisitArea? get entireArea => throw _privateConstructorUsedError;
  bool get canPanelScrollUp => throw _privateConstructorUsedError;
  bool get isViewExpanded => throw _privateConstructorUsedError;
  bool get isModifying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelStateCopyWith<TravelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelStateCopyWith<$Res> {
  factory $TravelStateCopyWith(
          TravelState value, $Res Function(TravelState) then) =
      _$TravelStateCopyWithImpl<$Res, TravelState>;
  @useResult
  $Res call(
      {Travel travel,
      List<VisitDisplayType> items,
      int visitIndex,
      double panelHeight,
      bool isCameraMoved,
      List<VisitArea> partialAreas,
      VisitArea? entireArea,
      bool canPanelScrollUp,
      bool isViewExpanded,
      bool isModifying});

  $TravelCopyWith<$Res> get travel;
  $VisitAreaCopyWith<$Res>? get entireArea;
}

/// @nodoc
class _$TravelStateCopyWithImpl<$Res, $Val extends TravelState>
    implements $TravelStateCopyWith<$Res> {
  _$TravelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
    Object? items = null,
    Object? visitIndex = null,
    Object? panelHeight = null,
    Object? isCameraMoved = null,
    Object? partialAreas = null,
    Object? entireArea = freezed,
    Object? canPanelScrollUp = null,
    Object? isViewExpanded = null,
    Object? isModifying = null,
  }) {
    return _then(_value.copyWith(
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VisitDisplayType>,
      visitIndex: null == visitIndex
          ? _value.visitIndex
          : visitIndex // ignore: cast_nullable_to_non_nullable
              as int,
      panelHeight: null == panelHeight
          ? _value.panelHeight
          : panelHeight // ignore: cast_nullable_to_non_nullable
              as double,
      isCameraMoved: null == isCameraMoved
          ? _value.isCameraMoved
          : isCameraMoved // ignore: cast_nullable_to_non_nullable
              as bool,
      partialAreas: null == partialAreas
          ? _value.partialAreas
          : partialAreas // ignore: cast_nullable_to_non_nullable
              as List<VisitArea>,
      entireArea: freezed == entireArea
          ? _value.entireArea
          : entireArea // ignore: cast_nullable_to_non_nullable
              as VisitArea?,
      canPanelScrollUp: null == canPanelScrollUp
          ? _value.canPanelScrollUp
          : canPanelScrollUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewExpanded: null == isViewExpanded
          ? _value.isViewExpanded
          : isViewExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isModifying: null == isModifying
          ? _value.isModifying
          : isModifying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelCopyWith<$Res> get travel {
    return $TravelCopyWith<$Res>(_value.travel, (value) {
      return _then(_value.copyWith(travel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitAreaCopyWith<$Res>? get entireArea {
    if (_value.entireArea == null) {
      return null;
    }

    return $VisitAreaCopyWith<$Res>(_value.entireArea!, (value) {
      return _then(_value.copyWith(entireArea: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TravelStateImplCopyWith<$Res>
    implements $TravelStateCopyWith<$Res> {
  factory _$$TravelStateImplCopyWith(
          _$TravelStateImpl value, $Res Function(_$TravelStateImpl) then) =
      __$$TravelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Travel travel,
      List<VisitDisplayType> items,
      int visitIndex,
      double panelHeight,
      bool isCameraMoved,
      List<VisitArea> partialAreas,
      VisitArea? entireArea,
      bool canPanelScrollUp,
      bool isViewExpanded,
      bool isModifying});

  @override
  $TravelCopyWith<$Res> get travel;
  @override
  $VisitAreaCopyWith<$Res>? get entireArea;
}

/// @nodoc
class __$$TravelStateImplCopyWithImpl<$Res>
    extends _$TravelStateCopyWithImpl<$Res, _$TravelStateImpl>
    implements _$$TravelStateImplCopyWith<$Res> {
  __$$TravelStateImplCopyWithImpl(
      _$TravelStateImpl _value, $Res Function(_$TravelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travel = null,
    Object? items = null,
    Object? visitIndex = null,
    Object? panelHeight = null,
    Object? isCameraMoved = null,
    Object? partialAreas = null,
    Object? entireArea = freezed,
    Object? canPanelScrollUp = null,
    Object? isViewExpanded = null,
    Object? isModifying = null,
  }) {
    return _then(_$TravelStateImpl(
      travel: null == travel
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<VisitDisplayType>,
      visitIndex: null == visitIndex
          ? _value.visitIndex
          : visitIndex // ignore: cast_nullable_to_non_nullable
              as int,
      panelHeight: null == panelHeight
          ? _value.panelHeight
          : panelHeight // ignore: cast_nullable_to_non_nullable
              as double,
      isCameraMoved: null == isCameraMoved
          ? _value.isCameraMoved
          : isCameraMoved // ignore: cast_nullable_to_non_nullable
              as bool,
      partialAreas: null == partialAreas
          ? _value._partialAreas
          : partialAreas // ignore: cast_nullable_to_non_nullable
              as List<VisitArea>,
      entireArea: freezed == entireArea
          ? _value.entireArea
          : entireArea // ignore: cast_nullable_to_non_nullable
              as VisitArea?,
      canPanelScrollUp: null == canPanelScrollUp
          ? _value.canPanelScrollUp
          : canPanelScrollUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewExpanded: null == isViewExpanded
          ? _value.isViewExpanded
          : isViewExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isModifying: null == isModifying
          ? _value.isModifying
          : isModifying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TravelStateImpl implements _TravelState {
  _$TravelStateImpl(
      {required this.travel,
      final List<VisitDisplayType> items = const [],
      this.visitIndex = 0,
      this.panelHeight = 0.0,
      this.isCameraMoved = false,
      final List<VisitArea> partialAreas = const [],
      this.entireArea,
      this.canPanelScrollUp = false,
      this.isViewExpanded = false,
      this.isModifying = false})
      : _items = items,
        _partialAreas = partialAreas;

  @override
  final Travel travel;
  final List<VisitDisplayType> _items;
  @override
  @JsonKey()
  List<VisitDisplayType> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int visitIndex;
  @override
  @JsonKey()
  final double panelHeight;
  @override
  @JsonKey()
  final bool isCameraMoved;
  final List<VisitArea> _partialAreas;
  @override
  @JsonKey()
  List<VisitArea> get partialAreas {
    if (_partialAreas is EqualUnmodifiableListView) return _partialAreas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partialAreas);
  }

  @override
  final VisitArea? entireArea;
  @override
  @JsonKey()
  final bool canPanelScrollUp;
  @override
  @JsonKey()
  final bool isViewExpanded;
  @override
  @JsonKey()
  final bool isModifying;

  @override
  String toString() {
    return 'TravelState(travel: $travel, items: $items, visitIndex: $visitIndex, panelHeight: $panelHeight, isCameraMoved: $isCameraMoved, partialAreas: $partialAreas, entireArea: $entireArea, canPanelScrollUp: $canPanelScrollUp, isViewExpanded: $isViewExpanded, isModifying: $isModifying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelStateImpl &&
            (identical(other.travel, travel) || other.travel == travel) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.visitIndex, visitIndex) ||
                other.visitIndex == visitIndex) &&
            (identical(other.panelHeight, panelHeight) ||
                other.panelHeight == panelHeight) &&
            (identical(other.isCameraMoved, isCameraMoved) ||
                other.isCameraMoved == isCameraMoved) &&
            const DeepCollectionEquality()
                .equals(other._partialAreas, _partialAreas) &&
            (identical(other.entireArea, entireArea) ||
                other.entireArea == entireArea) &&
            (identical(other.canPanelScrollUp, canPanelScrollUp) ||
                other.canPanelScrollUp == canPanelScrollUp) &&
            (identical(other.isViewExpanded, isViewExpanded) ||
                other.isViewExpanded == isViewExpanded) &&
            (identical(other.isModifying, isModifying) ||
                other.isModifying == isModifying));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      travel,
      const DeepCollectionEquality().hash(_items),
      visitIndex,
      panelHeight,
      isCameraMoved,
      const DeepCollectionEquality().hash(_partialAreas),
      entireArea,
      canPanelScrollUp,
      isViewExpanded,
      isModifying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelStateImplCopyWith<_$TravelStateImpl> get copyWith =>
      __$$TravelStateImplCopyWithImpl<_$TravelStateImpl>(this, _$identity);
}

abstract class _TravelState implements TravelState {
  factory _TravelState(
      {required final Travel travel,
      final List<VisitDisplayType> items,
      final int visitIndex,
      final double panelHeight,
      final bool isCameraMoved,
      final List<VisitArea> partialAreas,
      final VisitArea? entireArea,
      final bool canPanelScrollUp,
      final bool isViewExpanded,
      final bool isModifying}) = _$TravelStateImpl;

  @override
  Travel get travel;
  @override
  List<VisitDisplayType> get items;
  @override
  int get visitIndex;
  @override
  double get panelHeight;
  @override
  bool get isCameraMoved;
  @override
  List<VisitArea> get partialAreas;
  @override
  VisitArea? get entireArea;
  @override
  bool get canPanelScrollUp;
  @override
  bool get isViewExpanded;
  @override
  bool get isModifying;
  @override
  @JsonKey(ignore: true)
  _$$TravelStateImplCopyWith<_$TravelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
