// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleMapUiEvent {
  String get style => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String style) changeMapStyle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String style)? changeMapStyle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String style)? changeMapStyle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMapStyle value) changeMapStyle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMapStyle value)? changeMapStyle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMapStyle value)? changeMapStyle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapUiEventCopyWith<GoogleMapUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapUiEventCopyWith<$Res> {
  factory $GoogleMapUiEventCopyWith(
          GoogleMapUiEvent value, $Res Function(GoogleMapUiEvent) then) =
      _$GoogleMapUiEventCopyWithImpl<$Res, GoogleMapUiEvent>;
  @useResult
  $Res call({String style});
}

/// @nodoc
class _$GoogleMapUiEventCopyWithImpl<$Res, $Val extends GoogleMapUiEvent>
    implements $GoogleMapUiEventCopyWith<$Res> {
  _$GoogleMapUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeMapStyleImplCopyWith<$Res>
    implements $GoogleMapUiEventCopyWith<$Res> {
  factory _$$ChangeMapStyleImplCopyWith(_$ChangeMapStyleImpl value,
          $Res Function(_$ChangeMapStyleImpl) then) =
      __$$ChangeMapStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String style});
}

/// @nodoc
class __$$ChangeMapStyleImplCopyWithImpl<$Res>
    extends _$GoogleMapUiEventCopyWithImpl<$Res, _$ChangeMapStyleImpl>
    implements _$$ChangeMapStyleImplCopyWith<$Res> {
  __$$ChangeMapStyleImplCopyWithImpl(
      _$ChangeMapStyleImpl _value, $Res Function(_$ChangeMapStyleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_$ChangeMapStyleImpl(
      null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeMapStyleImpl implements _ChangeMapStyle {
  const _$ChangeMapStyleImpl(this.style);

  @override
  final String style;

  @override
  String toString() {
    return 'GoogleMapUiEvent.changeMapStyle(style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMapStyleImpl &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMapStyleImplCopyWith<_$ChangeMapStyleImpl> get copyWith =>
      __$$ChangeMapStyleImplCopyWithImpl<_$ChangeMapStyleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String style) changeMapStyle,
  }) {
    return changeMapStyle(style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String style)? changeMapStyle,
  }) {
    return changeMapStyle?.call(style);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String style)? changeMapStyle,
    required TResult orElse(),
  }) {
    if (changeMapStyle != null) {
      return changeMapStyle(style);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeMapStyle value) changeMapStyle,
  }) {
    return changeMapStyle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeMapStyle value)? changeMapStyle,
  }) {
    return changeMapStyle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeMapStyle value)? changeMapStyle,
    required TResult orElse(),
  }) {
    if (changeMapStyle != null) {
      return changeMapStyle(this);
    }
    return orElse();
  }
}

abstract class _ChangeMapStyle implements GoogleMapUiEvent {
  const factory _ChangeMapStyle(final String style) = _$ChangeMapStyleImpl;

  @override
  String get style;
  @override
  @JsonKey(ignore: true)
  _$$ChangeMapStyleImplCopyWith<_$ChangeMapStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
