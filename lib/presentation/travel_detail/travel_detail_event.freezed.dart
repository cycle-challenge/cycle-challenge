// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailEventCopyWith<$Res> {
  factory $TravelDetailEventCopyWith(
          TravelDetailEvent value, $Res Function(TravelDetailEvent) then) =
      _$TravelDetailEventCopyWithImpl<$Res, TravelDetailEvent>;
}

/// @nodoc
class _$TravelDetailEventCopyWithImpl<$Res, $Val extends TravelDetailEvent>
    implements $TravelDetailEventCopyWith<$Res> {
  _$TravelDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScrollVisitEventImplCopyWith<$Res> {
  factory _$$ScrollVisitEventImplCopyWith(_$ScrollVisitEventImpl value,
          $Res Function(_$ScrollVisitEventImpl) then) =
      __$$ScrollVisitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ScrollVisitEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$ScrollVisitEventImpl>
    implements _$$ScrollVisitEventImplCopyWith<$Res> {
  __$$ScrollVisitEventImplCopyWithImpl(_$ScrollVisitEventImpl _value,
      $Res Function(_$ScrollVisitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ScrollVisitEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScrollVisitEventImpl implements ScrollVisitEvent {
  const _$ScrollVisitEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TravelDetailEvent.scrollVisit(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollVisitEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollVisitEventImplCopyWith<_$ScrollVisitEventImpl> get copyWith =>
      __$$ScrollVisitEventImplCopyWithImpl<_$ScrollVisitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return scrollVisit(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return scrollVisit?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (scrollVisit != null) {
      return scrollVisit(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return scrollVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return scrollVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (scrollVisit != null) {
      return scrollVisit(this);
    }
    return orElse();
  }
}

abstract class ScrollVisitEvent implements TravelDetailEvent {
  const factory ScrollVisitEvent(final int index) = _$ScrollVisitEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ScrollVisitEventImplCopyWith<_$ScrollVisitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeVisitEventImplCopyWith<$Res> {
  factory _$$ChangeVisitEventImplCopyWith(_$ChangeVisitEventImpl value,
          $Res Function(_$ChangeVisitEventImpl) then) =
      __$$ChangeVisitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeVisitEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$ChangeVisitEventImpl>
    implements _$$ChangeVisitEventImplCopyWith<$Res> {
  __$$ChangeVisitEventImplCopyWithImpl(_$ChangeVisitEventImpl _value,
      $Res Function(_$ChangeVisitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeVisitEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeVisitEventImpl implements ChangeVisitEvent {
  const _$ChangeVisitEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TravelDetailEvent.changeVisit(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeVisitEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeVisitEventImplCopyWith<_$ChangeVisitEventImpl> get copyWith =>
      __$$ChangeVisitEventImplCopyWithImpl<_$ChangeVisitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return changeVisit(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return changeVisit?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (changeVisit != null) {
      return changeVisit(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return changeVisit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return changeVisit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (changeVisit != null) {
      return changeVisit(this);
    }
    return orElse();
  }
}

abstract class ChangeVisitEvent implements TravelDetailEvent {
  const factory ChangeVisitEvent(final int index) = _$ChangeVisitEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeVisitEventImplCopyWith<_$ChangeVisitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextDayOfTravelEventImplCopyWith<$Res> {
  factory _$$NextDayOfTravelEventImplCopyWith(_$NextDayOfTravelEventImpl value,
          $Res Function(_$NextDayOfTravelEventImpl) then) =
      __$$NextDayOfTravelEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextDayOfTravelEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$NextDayOfTravelEventImpl>
    implements _$$NextDayOfTravelEventImplCopyWith<$Res> {
  __$$NextDayOfTravelEventImplCopyWithImpl(_$NextDayOfTravelEventImpl _value,
      $Res Function(_$NextDayOfTravelEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextDayOfTravelEventImpl implements NextDayOfTravelEvent {
  const _$NextDayOfTravelEventImpl();

  @override
  String toString() {
    return 'TravelDetailEvent.nextDayOfTravel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextDayOfTravelEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return nextDayOfTravel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return nextDayOfTravel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (nextDayOfTravel != null) {
      return nextDayOfTravel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return nextDayOfTravel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return nextDayOfTravel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (nextDayOfTravel != null) {
      return nextDayOfTravel(this);
    }
    return orElse();
  }
}

abstract class NextDayOfTravelEvent implements TravelDetailEvent {
  const factory NextDayOfTravelEvent() = _$NextDayOfTravelEventImpl;
}

/// @nodoc
abstract class _$$PrevDayOfTravelEventImplCopyWith<$Res> {
  factory _$$PrevDayOfTravelEventImplCopyWith(_$PrevDayOfTravelEventImpl value,
          $Res Function(_$PrevDayOfTravelEventImpl) then) =
      __$$PrevDayOfTravelEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrevDayOfTravelEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$PrevDayOfTravelEventImpl>
    implements _$$PrevDayOfTravelEventImplCopyWith<$Res> {
  __$$PrevDayOfTravelEventImplCopyWithImpl(_$PrevDayOfTravelEventImpl _value,
      $Res Function(_$PrevDayOfTravelEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PrevDayOfTravelEventImpl implements PrevDayOfTravelEvent {
  const _$PrevDayOfTravelEventImpl();

  @override
  String toString() {
    return 'TravelDetailEvent.prevDayOfTravel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrevDayOfTravelEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return prevDayOfTravel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return prevDayOfTravel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (prevDayOfTravel != null) {
      return prevDayOfTravel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return prevDayOfTravel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return prevDayOfTravel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (prevDayOfTravel != null) {
      return prevDayOfTravel(this);
    }
    return orElse();
  }
}

abstract class PrevDayOfTravelEvent implements TravelDetailEvent {
  const factory PrevDayOfTravelEvent() = _$PrevDayOfTravelEventImpl;
}

/// @nodoc
abstract class _$$ToogleMapViewEventImplCopyWith<$Res> {
  factory _$$ToogleMapViewEventImplCopyWith(_$ToogleMapViewEventImpl value,
          $Res Function(_$ToogleMapViewEventImpl) then) =
      __$$ToogleMapViewEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToogleMapViewEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$ToogleMapViewEventImpl>
    implements _$$ToogleMapViewEventImplCopyWith<$Res> {
  __$$ToogleMapViewEventImplCopyWithImpl(_$ToogleMapViewEventImpl _value,
      $Res Function(_$ToogleMapViewEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToogleMapViewEventImpl implements ToogleMapViewEvent {
  const _$ToogleMapViewEventImpl();

  @override
  String toString() {
    return 'TravelDetailEvent.toggleMapView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToogleMapViewEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return toggleMapView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return toggleMapView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (toggleMapView != null) {
      return toggleMapView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return toggleMapView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return toggleMapView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (toggleMapView != null) {
      return toggleMapView(this);
    }
    return orElse();
  }
}

abstract class ToogleMapViewEvent implements TravelDetailEvent {
  const factory ToogleMapViewEvent() = _$ToogleMapViewEventImpl;
}

/// @nodoc
abstract class _$$ChangePanelHeightEventImplCopyWith<$Res> {
  factory _$$ChangePanelHeightEventImplCopyWith(
          _$ChangePanelHeightEventImpl value,
          $Res Function(_$ChangePanelHeightEventImpl) then) =
      __$$ChangePanelHeightEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double height});
}

/// @nodoc
class __$$ChangePanelHeightEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$ChangePanelHeightEventImpl>
    implements _$$ChangePanelHeightEventImplCopyWith<$Res> {
  __$$ChangePanelHeightEventImplCopyWithImpl(
      _$ChangePanelHeightEventImpl _value,
      $Res Function(_$ChangePanelHeightEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
  }) {
    return _then(_$ChangePanelHeightEventImpl(
      null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangePanelHeightEventImpl implements ChangePanelHeightEvent {
  const _$ChangePanelHeightEventImpl(this.height);

  @override
  final double height;

  @override
  String toString() {
    return 'TravelDetailEvent.changePanelHeight(height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePanelHeightEventImpl &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePanelHeightEventImplCopyWith<_$ChangePanelHeightEventImpl>
      get copyWith => __$$ChangePanelHeightEventImplCopyWithImpl<
          _$ChangePanelHeightEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return changePanelHeight(height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return changePanelHeight?.call(height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (changePanelHeight != null) {
      return changePanelHeight(height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return changePanelHeight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return changePanelHeight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (changePanelHeight != null) {
      return changePanelHeight(this);
    }
    return orElse();
  }
}

abstract class ChangePanelHeightEvent implements TravelDetailEvent {
  const factory ChangePanelHeightEvent(final double height) =
      _$ChangePanelHeightEventImpl;

  double get height;
  @JsonKey(ignore: true)
  _$$ChangePanelHeightEventImplCopyWith<_$ChangePanelHeightEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowInitViewButtonEventImplCopyWith<$Res> {
  factory _$$ShowInitViewButtonEventImplCopyWith(
          _$ShowInitViewButtonEventImpl value,
          $Res Function(_$ShowInitViewButtonEventImpl) then) =
      __$$ShowInitViewButtonEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowInitViewButtonEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$ShowInitViewButtonEventImpl>
    implements _$$ShowInitViewButtonEventImplCopyWith<$Res> {
  __$$ShowInitViewButtonEventImplCopyWithImpl(
      _$ShowInitViewButtonEventImpl _value,
      $Res Function(_$ShowInitViewButtonEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowInitViewButtonEventImpl implements ShowInitViewButtonEvent {
  const _$ShowInitViewButtonEventImpl();

  @override
  String toString() {
    return 'TravelDetailEvent.showInitViewButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowInitViewButtonEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return showInitViewButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return showInitViewButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (showInitViewButton != null) {
      return showInitViewButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return showInitViewButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return showInitViewButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (showInitViewButton != null) {
      return showInitViewButton(this);
    }
    return orElse();
  }
}

abstract class ShowInitViewButtonEvent implements TravelDetailEvent {
  const factory ShowInitViewButtonEvent() = _$ShowInitViewButtonEventImpl;
}

/// @nodoc
abstract class _$$initViewEventImplCopyWith<$Res> {
  factory _$$initViewEventImplCopyWith(
          _$initViewEventImpl value, $Res Function(_$initViewEventImpl) then) =
      __$$initViewEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initViewEventImplCopyWithImpl<$Res>
    extends _$TravelDetailEventCopyWithImpl<$Res, _$initViewEventImpl>
    implements _$$initViewEventImplCopyWith<$Res> {
  __$$initViewEventImplCopyWithImpl(
      _$initViewEventImpl _value, $Res Function(_$initViewEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initViewEventImpl implements initViewEvent {
  const _$initViewEventImpl();

  @override
  String toString() {
    return 'TravelDetailEvent.initView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initViewEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) scrollVisit,
    required TResult Function(int index) changeVisit,
    required TResult Function() nextDayOfTravel,
    required TResult Function() prevDayOfTravel,
    required TResult Function() toggleMapView,
    required TResult Function(double height) changePanelHeight,
    required TResult Function() showInitViewButton,
    required TResult Function() initView,
  }) {
    return initView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? scrollVisit,
    TResult? Function(int index)? changeVisit,
    TResult? Function()? nextDayOfTravel,
    TResult? Function()? prevDayOfTravel,
    TResult? Function()? toggleMapView,
    TResult? Function(double height)? changePanelHeight,
    TResult? Function()? showInitViewButton,
    TResult? Function()? initView,
  }) {
    return initView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? scrollVisit,
    TResult Function(int index)? changeVisit,
    TResult Function()? nextDayOfTravel,
    TResult Function()? prevDayOfTravel,
    TResult Function()? toggleMapView,
    TResult Function(double height)? changePanelHeight,
    TResult Function()? showInitViewButton,
    TResult Function()? initView,
    required TResult orElse(),
  }) {
    if (initView != null) {
      return initView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollVisitEvent value) scrollVisit,
    required TResult Function(ChangeVisitEvent value) changeVisit,
    required TResult Function(NextDayOfTravelEvent value) nextDayOfTravel,
    required TResult Function(PrevDayOfTravelEvent value) prevDayOfTravel,
    required TResult Function(ToogleMapViewEvent value) toggleMapView,
    required TResult Function(ChangePanelHeightEvent value) changePanelHeight,
    required TResult Function(ShowInitViewButtonEvent value) showInitViewButton,
    required TResult Function(initViewEvent value) initView,
  }) {
    return initView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollVisitEvent value)? scrollVisit,
    TResult? Function(ChangeVisitEvent value)? changeVisit,
    TResult? Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult? Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult? Function(ToogleMapViewEvent value)? toggleMapView,
    TResult? Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult? Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult? Function(initViewEvent value)? initView,
  }) {
    return initView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollVisitEvent value)? scrollVisit,
    TResult Function(ChangeVisitEvent value)? changeVisit,
    TResult Function(NextDayOfTravelEvent value)? nextDayOfTravel,
    TResult Function(PrevDayOfTravelEvent value)? prevDayOfTravel,
    TResult Function(ToogleMapViewEvent value)? toggleMapView,
    TResult Function(ChangePanelHeightEvent value)? changePanelHeight,
    TResult Function(ShowInitViewButtonEvent value)? showInitViewButton,
    TResult Function(initViewEvent value)? initView,
    required TResult orElse(),
  }) {
    if (initView != null) {
      return initView(this);
    }
    return orElse();
  }
}

abstract class initViewEvent implements TravelDetailEvent {
  const factory initViewEvent() = _$initViewEventImpl;
}
