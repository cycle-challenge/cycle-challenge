// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainUiEvent {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainShowSnackbarEvent value) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainShowSnackbarEvent value)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainShowSnackbarEvent value)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainUiEventCopyWith<MainUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUiEventCopyWith<$Res> {
  factory $MainUiEventCopyWith(
          MainUiEvent value, $Res Function(MainUiEvent) then) =
      _$MainUiEventCopyWithImpl<$Res, MainUiEvent>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MainUiEventCopyWithImpl<$Res, $Val extends MainUiEvent>
    implements $MainUiEventCopyWith<$Res> {
  _$MainUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainShowSnackbarEventImplCopyWith<$Res>
    implements $MainUiEventCopyWith<$Res> {
  factory _$$MainShowSnackbarEventImplCopyWith(
          _$MainShowSnackbarEventImpl value,
          $Res Function(_$MainShowSnackbarEventImpl) then) =
      __$$MainShowSnackbarEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MainShowSnackbarEventImplCopyWithImpl<$Res>
    extends _$MainUiEventCopyWithImpl<$Res, _$MainShowSnackbarEventImpl>
    implements _$$MainShowSnackbarEventImplCopyWith<$Res> {
  __$$MainShowSnackbarEventImplCopyWithImpl(_$MainShowSnackbarEventImpl _value,
      $Res Function(_$MainShowSnackbarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MainShowSnackbarEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainShowSnackbarEventImpl implements MainShowSnackbarEvent {
  const _$MainShowSnackbarEventImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainUiEvent.showSnackbar(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainShowSnackbarEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainShowSnackbarEventImplCopyWith<_$MainShowSnackbarEventImpl>
      get copyWith => __$$MainShowSnackbarEventImplCopyWithImpl<
          _$MainShowSnackbarEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackbar,
  }) {
    return showSnackbar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? showSnackbar,
  }) {
    return showSnackbar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainShowSnackbarEvent value) showSnackbar,
  }) {
    return showSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainShowSnackbarEvent value)? showSnackbar,
  }) {
    return showSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainShowSnackbarEvent value)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(this);
    }
    return orElse();
  }
}

abstract class MainShowSnackbarEvent implements MainUiEvent {
  const factory MainShowSnackbarEvent(final String message) =
      _$MainShowSnackbarEventImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MainShowSnackbarEventImplCopyWith<_$MainShowSnackbarEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
