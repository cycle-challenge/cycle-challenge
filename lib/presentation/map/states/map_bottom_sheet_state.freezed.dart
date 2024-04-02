// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bottom_sheet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapBottomSheetState {
  double get height => throw _privateConstructorUsedError;
  double get minHeight => throw _privateConstructorUsedError;
  double get maxHeight => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isAnimating => throw _privateConstructorUsedError;
  bool get canViewScrollUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapBottomSheetStateCopyWith<MapBottomSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapBottomSheetStateCopyWith<$Res> {
  factory $MapBottomSheetStateCopyWith(
          MapBottomSheetState value, $Res Function(MapBottomSheetState) then) =
      _$MapBottomSheetStateCopyWithImpl<$Res, MapBottomSheetState>;
  @useResult
  $Res call(
      {double height,
      double minHeight,
      double maxHeight,
      bool isExpanded,
      bool isAnimating,
      bool canViewScrollUp});
}

/// @nodoc
class _$MapBottomSheetStateCopyWithImpl<$Res, $Val extends MapBottomSheetState>
    implements $MapBottomSheetStateCopyWith<$Res> {
  _$MapBottomSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? minHeight = null,
    Object? maxHeight = null,
    Object? isExpanded = null,
    Object? isAnimating = null,
    Object? canViewScrollUp = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnimating: null == isAnimating
          ? _value.isAnimating
          : isAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
      canViewScrollUp: null == canViewScrollUp
          ? _value.canViewScrollUp
          : canViewScrollUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapBottomSheetStateImplCopyWith<$Res>
    implements $MapBottomSheetStateCopyWith<$Res> {
  factory _$$MapBottomSheetStateImplCopyWith(_$MapBottomSheetStateImpl value,
          $Res Function(_$MapBottomSheetStateImpl) then) =
      __$$MapBottomSheetStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double height,
      double minHeight,
      double maxHeight,
      bool isExpanded,
      bool isAnimating,
      bool canViewScrollUp});
}

/// @nodoc
class __$$MapBottomSheetStateImplCopyWithImpl<$Res>
    extends _$MapBottomSheetStateCopyWithImpl<$Res, _$MapBottomSheetStateImpl>
    implements _$$MapBottomSheetStateImplCopyWith<$Res> {
  __$$MapBottomSheetStateImplCopyWithImpl(_$MapBottomSheetStateImpl _value,
      $Res Function(_$MapBottomSheetStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? minHeight = null,
    Object? maxHeight = null,
    Object? isExpanded = null,
    Object? isAnimating = null,
    Object? canViewScrollUp = null,
  }) {
    return _then(_$MapBottomSheetStateImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      minHeight: null == minHeight
          ? _value.minHeight
          : minHeight // ignore: cast_nullable_to_non_nullable
              as double,
      maxHeight: null == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double,
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnimating: null == isAnimating
          ? _value.isAnimating
          : isAnimating // ignore: cast_nullable_to_non_nullable
              as bool,
      canViewScrollUp: null == canViewScrollUp
          ? _value.canViewScrollUp
          : canViewScrollUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MapBottomSheetStateImpl implements _MapBottomSheetState {
  _$MapBottomSheetStateImpl(
      {this.height = 244.0,
      this.minHeight = 244.0,
      this.maxHeight = 0.0,
      this.isExpanded = false,
      this.isAnimating = false,
      this.canViewScrollUp = false});

  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final double minHeight;
  @override
  @JsonKey()
  final double maxHeight;
  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final bool isAnimating;
  @override
  @JsonKey()
  final bool canViewScrollUp;

  @override
  String toString() {
    return 'MapBottomSheetState(height: $height, minHeight: $minHeight, maxHeight: $maxHeight, isExpanded: $isExpanded, isAnimating: $isAnimating, canViewScrollUp: $canViewScrollUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapBottomSheetStateImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isAnimating, isAnimating) ||
                other.isAnimating == isAnimating) &&
            (identical(other.canViewScrollUp, canViewScrollUp) ||
                other.canViewScrollUp == canViewScrollUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height, minHeight, maxHeight,
      isExpanded, isAnimating, canViewScrollUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapBottomSheetStateImplCopyWith<_$MapBottomSheetStateImpl> get copyWith =>
      __$$MapBottomSheetStateImplCopyWithImpl<_$MapBottomSheetStateImpl>(
          this, _$identity);
}

abstract class _MapBottomSheetState implements MapBottomSheetState {
  factory _MapBottomSheetState(
      {final double height,
      final double minHeight,
      final double maxHeight,
      final bool isExpanded,
      final bool isAnimating,
      final bool canViewScrollUp}) = _$MapBottomSheetStateImpl;

  @override
  double get height;
  @override
  double get minHeight;
  @override
  double get maxHeight;
  @override
  bool get isExpanded;
  @override
  bool get isAnimating;
  @override
  bool get canViewScrollUp;
  @override
  @JsonKey(ignore: true)
  _$$MapBottomSheetStateImplCopyWith<_$MapBottomSheetStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
