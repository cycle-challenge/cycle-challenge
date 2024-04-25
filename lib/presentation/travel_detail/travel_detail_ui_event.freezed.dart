// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_detail_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDetailUIEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound) moveBound,
    required TResult Function(int index) moveScroll,
    required TResult Function() initScroll,
    required TResult Function(String message) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound)? moveBound,
    TResult? Function(int index)? moveScroll,
    TResult? Function()? initScroll,
    TResult? Function(String message)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound)? moveBound,
    TResult Function(int index)? moveScroll,
    TResult Function()? initScroll,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
    required TResult Function(MoveScrollEvent value) moveScroll,
    required TResult Function(InitScrollEvent value) initScroll,
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
    TResult? Function(MoveScrollEvent value)? moveScroll,
    TResult? Function(InitScrollEvent value)? initScroll,
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    TResult Function(MoveScrollEvent value)? moveScroll,
    TResult Function(InitScrollEvent value)? initScroll,
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDetailUIEventCopyWith<$Res> {
  factory $TravelDetailUIEventCopyWith(
          TravelDetailUIEvent value, $Res Function(TravelDetailUIEvent) then) =
      _$TravelDetailUIEventCopyWithImpl<$Res, TravelDetailUIEvent>;
}

/// @nodoc
class _$TravelDetailUIEventCopyWithImpl<$Res, $Val extends TravelDetailUIEvent>
    implements $TravelDetailUIEventCopyWith<$Res> {
  _$TravelDetailUIEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$moveBoundEventImplCopyWith<$Res> {
  factory _$$moveBoundEventImplCopyWith(_$moveBoundEventImpl value,
          $Res Function(_$moveBoundEventImpl) then) =
      __$$moveBoundEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Bound bound});
}

/// @nodoc
class __$$moveBoundEventImplCopyWithImpl<$Res>
    extends _$TravelDetailUIEventCopyWithImpl<$Res, _$moveBoundEventImpl>
    implements _$$moveBoundEventImplCopyWith<$Res> {
  __$$moveBoundEventImplCopyWithImpl(
      _$moveBoundEventImpl _value, $Res Function(_$moveBoundEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bound = null,
  }) {
    return _then(_$moveBoundEventImpl(
      null == bound
          ? _value.bound
          : bound // ignore: cast_nullable_to_non_nullable
              as Bound,
    ));
  }
}

/// @nodoc

class _$moveBoundEventImpl implements moveBoundEvent {
  const _$moveBoundEventImpl(this.bound);

  @override
  final Bound bound;

  @override
  String toString() {
    return 'TravelDetailUIEvent.moveBound(bound: $bound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$moveBoundEventImpl &&
            (identical(other.bound, bound) || other.bound == bound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$moveBoundEventImplCopyWith<_$moveBoundEventImpl> get copyWith =>
      __$$moveBoundEventImplCopyWithImpl<_$moveBoundEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound) moveBound,
    required TResult Function(int index) moveScroll,
    required TResult Function() initScroll,
    required TResult Function(String message) showSnackBar,
  }) {
    return moveBound(bound);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound)? moveBound,
    TResult? Function(int index)? moveScroll,
    TResult? Function()? initScroll,
    TResult? Function(String message)? showSnackBar,
  }) {
    return moveBound?.call(bound);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound)? moveBound,
    TResult Function(int index)? moveScroll,
    TResult Function()? initScroll,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (moveBound != null) {
      return moveBound(bound);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
    required TResult Function(MoveScrollEvent value) moveScroll,
    required TResult Function(InitScrollEvent value) initScroll,
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
  }) {
    return moveBound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
    TResult? Function(MoveScrollEvent value)? moveScroll,
    TResult? Function(InitScrollEvent value)? initScroll,
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
  }) {
    return moveBound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    TResult Function(MoveScrollEvent value)? moveScroll,
    TResult Function(InitScrollEvent value)? initScroll,
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (moveBound != null) {
      return moveBound(this);
    }
    return orElse();
  }
}

abstract class moveBoundEvent implements TravelDetailUIEvent {
  const factory moveBoundEvent(final Bound bound) = _$moveBoundEventImpl;

  Bound get bound;
  @JsonKey(ignore: true)
  _$$moveBoundEventImplCopyWith<_$moveBoundEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoveScrollEventImplCopyWith<$Res> {
  factory _$$MoveScrollEventImplCopyWith(_$MoveScrollEventImpl value,
          $Res Function(_$MoveScrollEventImpl) then) =
      __$$MoveScrollEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$MoveScrollEventImplCopyWithImpl<$Res>
    extends _$TravelDetailUIEventCopyWithImpl<$Res, _$MoveScrollEventImpl>
    implements _$$MoveScrollEventImplCopyWith<$Res> {
  __$$MoveScrollEventImplCopyWithImpl(
      _$MoveScrollEventImpl _value, $Res Function(_$MoveScrollEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$MoveScrollEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoveScrollEventImpl implements MoveScrollEvent {
  const _$MoveScrollEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TravelDetailUIEvent.moveScroll(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveScrollEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveScrollEventImplCopyWith<_$MoveScrollEventImpl> get copyWith =>
      __$$MoveScrollEventImplCopyWithImpl<_$MoveScrollEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound) moveBound,
    required TResult Function(int index) moveScroll,
    required TResult Function() initScroll,
    required TResult Function(String message) showSnackBar,
  }) {
    return moveScroll(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound)? moveBound,
    TResult? Function(int index)? moveScroll,
    TResult? Function()? initScroll,
    TResult? Function(String message)? showSnackBar,
  }) {
    return moveScroll?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound)? moveBound,
    TResult Function(int index)? moveScroll,
    TResult Function()? initScroll,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (moveScroll != null) {
      return moveScroll(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
    required TResult Function(MoveScrollEvent value) moveScroll,
    required TResult Function(InitScrollEvent value) initScroll,
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
  }) {
    return moveScroll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
    TResult? Function(MoveScrollEvent value)? moveScroll,
    TResult? Function(InitScrollEvent value)? initScroll,
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
  }) {
    return moveScroll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    TResult Function(MoveScrollEvent value)? moveScroll,
    TResult Function(InitScrollEvent value)? initScroll,
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (moveScroll != null) {
      return moveScroll(this);
    }
    return orElse();
  }
}

abstract class MoveScrollEvent implements TravelDetailUIEvent {
  const factory MoveScrollEvent(final int index) = _$MoveScrollEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$MoveScrollEventImplCopyWith<_$MoveScrollEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitScrollEventImplCopyWith<$Res> {
  factory _$$InitScrollEventImplCopyWith(_$InitScrollEventImpl value,
          $Res Function(_$InitScrollEventImpl) then) =
      __$$InitScrollEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitScrollEventImplCopyWithImpl<$Res>
    extends _$TravelDetailUIEventCopyWithImpl<$Res, _$InitScrollEventImpl>
    implements _$$InitScrollEventImplCopyWith<$Res> {
  __$$InitScrollEventImplCopyWithImpl(
      _$InitScrollEventImpl _value, $Res Function(_$InitScrollEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitScrollEventImpl implements InitScrollEvent {
  const _$InitScrollEventImpl();

  @override
  String toString() {
    return 'TravelDetailUIEvent.initScroll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitScrollEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound) moveBound,
    required TResult Function(int index) moveScroll,
    required TResult Function() initScroll,
    required TResult Function(String message) showSnackBar,
  }) {
    return initScroll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound)? moveBound,
    TResult? Function(int index)? moveScroll,
    TResult? Function()? initScroll,
    TResult? Function(String message)? showSnackBar,
  }) {
    return initScroll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound)? moveBound,
    TResult Function(int index)? moveScroll,
    TResult Function()? initScroll,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (initScroll != null) {
      return initScroll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
    required TResult Function(MoveScrollEvent value) moveScroll,
    required TResult Function(InitScrollEvent value) initScroll,
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
  }) {
    return initScroll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
    TResult? Function(MoveScrollEvent value)? moveScroll,
    TResult? Function(InitScrollEvent value)? initScroll,
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
  }) {
    return initScroll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    TResult Function(MoveScrollEvent value)? moveScroll,
    TResult Function(InitScrollEvent value)? initScroll,
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (initScroll != null) {
      return initScroll(this);
    }
    return orElse();
  }
}

abstract class InitScrollEvent implements TravelDetailUIEvent {
  const factory InitScrollEvent() = _$InitScrollEventImpl;
}

/// @nodoc
abstract class _$$ShowSnackBarUIEventImplCopyWith<$Res> {
  factory _$$ShowSnackBarUIEventImplCopyWith(_$ShowSnackBarUIEventImpl value,
          $Res Function(_$ShowSnackBarUIEventImpl) then) =
      __$$ShowSnackBarUIEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarUIEventImplCopyWithImpl<$Res>
    extends _$TravelDetailUIEventCopyWithImpl<$Res, _$ShowSnackBarUIEventImpl>
    implements _$$ShowSnackBarUIEventImplCopyWith<$Res> {
  __$$ShowSnackBarUIEventImplCopyWithImpl(_$ShowSnackBarUIEventImpl _value,
      $Res Function(_$ShowSnackBarUIEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowSnackBarUIEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBarUIEventImpl implements ShowSnackBarUIEvent {
  const _$ShowSnackBarUIEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TravelDetailUIEvent.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBarUIEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSnackBarUIEventImplCopyWith<_$ShowSnackBarUIEventImpl> get copyWith =>
      __$$ShowSnackBarUIEventImplCopyWithImpl<_$ShowSnackBarUIEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bound bound) moveBound,
    required TResult Function(int index) moveScroll,
    required TResult Function() initScroll,
    required TResult Function(String message) showSnackBar,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bound bound)? moveBound,
    TResult? Function(int index)? moveScroll,
    TResult? Function()? initScroll,
    TResult? Function(String message)? showSnackBar,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bound bound)? moveBound,
    TResult Function(int index)? moveScroll,
    TResult Function()? initScroll,
    TResult Function(String message)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(moveBoundEvent value) moveBound,
    required TResult Function(MoveScrollEvent value) moveScroll,
    required TResult Function(InitScrollEvent value) initScroll,
    required TResult Function(ShowSnackBarUIEvent value) showSnackBar,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(moveBoundEvent value)? moveBound,
    TResult? Function(MoveScrollEvent value)? moveScroll,
    TResult? Function(InitScrollEvent value)? initScroll,
    TResult? Function(ShowSnackBarUIEvent value)? showSnackBar,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(moveBoundEvent value)? moveBound,
    TResult Function(MoveScrollEvent value)? moveScroll,
    TResult Function(InitScrollEvent value)? initScroll,
    TResult Function(ShowSnackBarUIEvent value)? showSnackBar,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBarUIEvent implements TravelDetailUIEvent {
  const factory ShowSnackBarUIEvent(final String message) =
      _$ShowSnackBarUIEventImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ShowSnackBarUIEventImplCopyWith<_$ShowSnackBarUIEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
