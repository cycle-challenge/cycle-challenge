// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainChangeNavigationEventImplCopyWith<$Res> {
  factory _$$MainChangeNavigationEventImplCopyWith(
          _$MainChangeNavigationEventImpl value,
          $Res Function(_$MainChangeNavigationEventImpl) then) =
      __$$MainChangeNavigationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$MainChangeNavigationEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainChangeNavigationEventImpl>
    implements _$$MainChangeNavigationEventImplCopyWith<$Res> {
  __$$MainChangeNavigationEventImplCopyWithImpl(
      _$MainChangeNavigationEventImpl _value,
      $Res Function(_$MainChangeNavigationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$MainChangeNavigationEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainChangeNavigationEventImpl implements MainChangeNavigationEvent {
  const _$MainChangeNavigationEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MainEvent.changeNavigation(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainChangeNavigationEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainChangeNavigationEventImplCopyWith<_$MainChangeNavigationEventImpl>
      get copyWith => __$$MainChangeNavigationEventImplCopyWithImpl<
          _$MainChangeNavigationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return changeNavigation(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return changeNavigation?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (changeNavigation != null) {
      return changeNavigation(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return changeNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return changeNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (changeNavigation != null) {
      return changeNavigation(this);
    }
    return orElse();
  }
}

abstract class MainChangeNavigationEvent implements MainEvent {
  const factory MainChangeNavigationEvent(final int index) =
      _$MainChangeNavigationEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$MainChangeNavigationEventImplCopyWith<_$MainChangeNavigationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainInitBottomSheetEventImplCopyWith<$Res> {
  factory _$$MainInitBottomSheetEventImplCopyWith(
          _$MainInitBottomSheetEventImpl value,
          $Res Function(_$MainInitBottomSheetEventImpl) then) =
      __$$MainInitBottomSheetEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? maxHeight});
}

/// @nodoc
class __$$MainInitBottomSheetEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainInitBottomSheetEventImpl>
    implements _$$MainInitBottomSheetEventImplCopyWith<$Res> {
  __$$MainInitBottomSheetEventImplCopyWithImpl(
      _$MainInitBottomSheetEventImpl _value,
      $Res Function(_$MainInitBottomSheetEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxHeight = freezed,
  }) {
    return _then(_$MainInitBottomSheetEventImpl(
      freezed == maxHeight
          ? _value.maxHeight
          : maxHeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$MainInitBottomSheetEventImpl implements MainInitBottomSheetEvent {
  const _$MainInitBottomSheetEventImpl(this.maxHeight);

  @override
  final double? maxHeight;

  @override
  String toString() {
    return 'MainEvent.initBottomSheet(maxHeight: $maxHeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainInitBottomSheetEventImpl &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxHeight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainInitBottomSheetEventImplCopyWith<_$MainInitBottomSheetEventImpl>
      get copyWith => __$$MainInitBottomSheetEventImplCopyWithImpl<
          _$MainInitBottomSheetEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return initBottomSheet(maxHeight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return initBottomSheet?.call(maxHeight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (initBottomSheet != null) {
      return initBottomSheet(maxHeight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return initBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return initBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (initBottomSheet != null) {
      return initBottomSheet(this);
    }
    return orElse();
  }
}

abstract class MainInitBottomSheetEvent implements MainEvent {
  const factory MainInitBottomSheetEvent(final double? maxHeight) =
      _$MainInitBottomSheetEventImpl;

  double? get maxHeight;
  @JsonKey(ignore: true)
  _$$MainInitBottomSheetEventImplCopyWith<_$MainInitBottomSheetEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainExpandBottomSheetEventImplCopyWith<$Res> {
  factory _$$MainExpandBottomSheetEventImplCopyWith(
          _$MainExpandBottomSheetEventImpl value,
          $Res Function(_$MainExpandBottomSheetEventImpl) then) =
      __$$MainExpandBottomSheetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainExpandBottomSheetEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainExpandBottomSheetEventImpl>
    implements _$$MainExpandBottomSheetEventImplCopyWith<$Res> {
  __$$MainExpandBottomSheetEventImplCopyWithImpl(
      _$MainExpandBottomSheetEventImpl _value,
      $Res Function(_$MainExpandBottomSheetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainExpandBottomSheetEventImpl implements MainExpandBottomSheetEvent {
  const _$MainExpandBottomSheetEventImpl();

  @override
  String toString() {
    return 'MainEvent.expandBottomSheet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainExpandBottomSheetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return expandBottomSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return expandBottomSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (expandBottomSheet != null) {
      return expandBottomSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return expandBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return expandBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (expandBottomSheet != null) {
      return expandBottomSheet(this);
    }
    return orElse();
  }
}

abstract class MainExpandBottomSheetEvent implements MainEvent {
  const factory MainExpandBottomSheetEvent() = _$MainExpandBottomSheetEventImpl;
}

/// @nodoc
abstract class _$$MainContractBottomSheetEventImplCopyWith<$Res> {
  factory _$$MainContractBottomSheetEventImplCopyWith(
          _$MainContractBottomSheetEventImpl value,
          $Res Function(_$MainContractBottomSheetEventImpl) then) =
      __$$MainContractBottomSheetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainContractBottomSheetEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainContractBottomSheetEventImpl>
    implements _$$MainContractBottomSheetEventImplCopyWith<$Res> {
  __$$MainContractBottomSheetEventImplCopyWithImpl(
      _$MainContractBottomSheetEventImpl _value,
      $Res Function(_$MainContractBottomSheetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainContractBottomSheetEventImpl
    implements MainContractBottomSheetEvent {
  const _$MainContractBottomSheetEventImpl();

  @override
  String toString() {
    return 'MainEvent.contractBottomSheet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainContractBottomSheetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return contractBottomSheet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return contractBottomSheet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (contractBottomSheet != null) {
      return contractBottomSheet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return contractBottomSheet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return contractBottomSheet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (contractBottomSheet != null) {
      return contractBottomSheet(this);
    }
    return orElse();
  }
}

abstract class MainContractBottomSheetEvent implements MainEvent {
  const factory MainContractBottomSheetEvent() =
      _$MainContractBottomSheetEventImpl;
}

/// @nodoc
abstract class _$$MainCanViewScrollUpEventEventImplCopyWith<$Res> {
  factory _$$MainCanViewScrollUpEventEventImplCopyWith(
          _$MainCanViewScrollUpEventEventImpl value,
          $Res Function(_$MainCanViewScrollUpEventEventImpl) then) =
      __$$MainCanViewScrollUpEventEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool canViewScrollUp});
}

/// @nodoc
class __$$MainCanViewScrollUpEventEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainCanViewScrollUpEventEventImpl>
    implements _$$MainCanViewScrollUpEventEventImplCopyWith<$Res> {
  __$$MainCanViewScrollUpEventEventImplCopyWithImpl(
      _$MainCanViewScrollUpEventEventImpl _value,
      $Res Function(_$MainCanViewScrollUpEventEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canViewScrollUp = null,
  }) {
    return _then(_$MainCanViewScrollUpEventEventImpl(
      null == canViewScrollUp
          ? _value.canViewScrollUp
          : canViewScrollUp // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainCanViewScrollUpEventEventImpl
    implements MainCanViewScrollUpEventEvent {
  const _$MainCanViewScrollUpEventEventImpl(this.canViewScrollUp);

  @override
  final bool canViewScrollUp;

  @override
  String toString() {
    return 'MainEvent.setCanViewScrollUp(canViewScrollUp: $canViewScrollUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainCanViewScrollUpEventEventImpl &&
            (identical(other.canViewScrollUp, canViewScrollUp) ||
                other.canViewScrollUp == canViewScrollUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canViewScrollUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainCanViewScrollUpEventEventImplCopyWith<
          _$MainCanViewScrollUpEventEventImpl>
      get copyWith => __$$MainCanViewScrollUpEventEventImplCopyWithImpl<
          _$MainCanViewScrollUpEventEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return setCanViewScrollUp(canViewScrollUp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return setCanViewScrollUp?.call(canViewScrollUp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (setCanViewScrollUp != null) {
      return setCanViewScrollUp(canViewScrollUp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return setCanViewScrollUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return setCanViewScrollUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (setCanViewScrollUp != null) {
      return setCanViewScrollUp(this);
    }
    return orElse();
  }
}

abstract class MainCanViewScrollUpEventEvent implements MainEvent {
  const factory MainCanViewScrollUpEventEvent(final bool canViewScrollUp) =
      _$MainCanViewScrollUpEventEventImpl;

  bool get canViewScrollUp;
  @JsonKey(ignore: true)
  _$$MainCanViewScrollUpEventEventImplCopyWith<
          _$MainCanViewScrollUpEventEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainStopBottomSheetAnimationEventEventImplCopyWith<$Res> {
  factory _$$MainStopBottomSheetAnimationEventEventImplCopyWith(
          _$MainStopBottomSheetAnimationEventEventImpl value,
          $Res Function(_$MainStopBottomSheetAnimationEventEventImpl) then) =
      __$$MainStopBottomSheetAnimationEventEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainStopBottomSheetAnimationEventEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res,
        _$MainStopBottomSheetAnimationEventEventImpl>
    implements _$$MainStopBottomSheetAnimationEventEventImplCopyWith<$Res> {
  __$$MainStopBottomSheetAnimationEventEventImplCopyWithImpl(
      _$MainStopBottomSheetAnimationEventEventImpl _value,
      $Res Function(_$MainStopBottomSheetAnimationEventEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainStopBottomSheetAnimationEventEventImpl
    implements MainStopBottomSheetAnimationEventEvent {
  const _$MainStopBottomSheetAnimationEventEventImpl();

  @override
  String toString() {
    return 'MainEvent.stopBottomSheetAnimation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStopBottomSheetAnimationEventEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return stopBottomSheetAnimation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return stopBottomSheetAnimation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (stopBottomSheetAnimation != null) {
      return stopBottomSheetAnimation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return stopBottomSheetAnimation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return stopBottomSheetAnimation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (stopBottomSheetAnimation != null) {
      return stopBottomSheetAnimation(this);
    }
    return orElse();
  }
}

abstract class MainStopBottomSheetAnimationEventEvent implements MainEvent {
  const factory MainStopBottomSheetAnimationEventEvent() =
      _$MainStopBottomSheetAnimationEventEventImpl;
}

/// @nodoc
abstract class _$$ChangeHasAgreedTermsImplCopyWith<$Res> {
  factory _$$ChangeHasAgreedTermsImplCopyWith(_$ChangeHasAgreedTermsImpl value,
          $Res Function(_$ChangeHasAgreedTermsImpl) then) =
      __$$ChangeHasAgreedTermsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasAgreedTerms});
}

/// @nodoc
class __$$ChangeHasAgreedTermsImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ChangeHasAgreedTermsImpl>
    implements _$$ChangeHasAgreedTermsImplCopyWith<$Res> {
  __$$ChangeHasAgreedTermsImplCopyWithImpl(_$ChangeHasAgreedTermsImpl _value,
      $Res Function(_$ChangeHasAgreedTermsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAgreedTerms = null,
  }) {
    return _then(_$ChangeHasAgreedTermsImpl(
      null == hasAgreedTerms
          ? _value.hasAgreedTerms
          : hasAgreedTerms // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeHasAgreedTermsImpl implements _ChangeHasAgreedTerms {
  const _$ChangeHasAgreedTermsImpl(this.hasAgreedTerms);

  @override
  final bool hasAgreedTerms;

  @override
  String toString() {
    return 'MainEvent.changeHasAgreedTerms(hasAgreedTerms: $hasAgreedTerms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeHasAgreedTermsImpl &&
            (identical(other.hasAgreedTerms, hasAgreedTerms) ||
                other.hasAgreedTerms == hasAgreedTerms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasAgreedTerms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeHasAgreedTermsImplCopyWith<_$ChangeHasAgreedTermsImpl>
      get copyWith =>
          __$$ChangeHasAgreedTermsImplCopyWithImpl<_$ChangeHasAgreedTermsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeNavigation,
    required TResult Function(double? maxHeight) initBottomSheet,
    required TResult Function() expandBottomSheet,
    required TResult Function() contractBottomSheet,
    required TResult Function(bool canViewScrollUp) setCanViewScrollUp,
    required TResult Function() stopBottomSheetAnimation,
    required TResult Function(bool hasAgreedTerms) changeHasAgreedTerms,
  }) {
    return changeHasAgreedTerms(hasAgreedTerms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeNavigation,
    TResult? Function(double? maxHeight)? initBottomSheet,
    TResult? Function()? expandBottomSheet,
    TResult? Function()? contractBottomSheet,
    TResult? Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult? Function()? stopBottomSheetAnimation,
    TResult? Function(bool hasAgreedTerms)? changeHasAgreedTerms,
  }) {
    return changeHasAgreedTerms?.call(hasAgreedTerms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeNavigation,
    TResult Function(double? maxHeight)? initBottomSheet,
    TResult Function()? expandBottomSheet,
    TResult Function()? contractBottomSheet,
    TResult Function(bool canViewScrollUp)? setCanViewScrollUp,
    TResult Function()? stopBottomSheetAnimation,
    TResult Function(bool hasAgreedTerms)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (changeHasAgreedTerms != null) {
      return changeHasAgreedTerms(hasAgreedTerms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainChangeNavigationEvent value) changeNavigation,
    required TResult Function(MainInitBottomSheetEvent value) initBottomSheet,
    required TResult Function(MainExpandBottomSheetEvent value)
        expandBottomSheet,
    required TResult Function(MainContractBottomSheetEvent value)
        contractBottomSheet,
    required TResult Function(MainCanViewScrollUpEventEvent value)
        setCanViewScrollUp,
    required TResult Function(MainStopBottomSheetAnimationEventEvent value)
        stopBottomSheetAnimation,
    required TResult Function(_ChangeHasAgreedTerms value) changeHasAgreedTerms,
  }) {
    return changeHasAgreedTerms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult? Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult? Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult? Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult? Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult? Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult? Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
  }) {
    return changeHasAgreedTerms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainChangeNavigationEvent value)? changeNavigation,
    TResult Function(MainInitBottomSheetEvent value)? initBottomSheet,
    TResult Function(MainExpandBottomSheetEvent value)? expandBottomSheet,
    TResult Function(MainContractBottomSheetEvent value)? contractBottomSheet,
    TResult Function(MainCanViewScrollUpEventEvent value)? setCanViewScrollUp,
    TResult Function(MainStopBottomSheetAnimationEventEvent value)?
        stopBottomSheetAnimation,
    TResult Function(_ChangeHasAgreedTerms value)? changeHasAgreedTerms,
    required TResult orElse(),
  }) {
    if (changeHasAgreedTerms != null) {
      return changeHasAgreedTerms(this);
    }
    return orElse();
  }
}

abstract class _ChangeHasAgreedTerms implements MainEvent {
  const factory _ChangeHasAgreedTerms(final bool hasAgreedTerms) =
      _$ChangeHasAgreedTermsImpl;

  bool get hasAgreedTerms;
  @JsonKey(ignore: true)
  _$$ChangeHasAgreedTermsImplCopyWith<_$ChangeHasAgreedTermsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
