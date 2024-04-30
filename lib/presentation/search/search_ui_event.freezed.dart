// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUiEvent {
  PlaceDetail get detail => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceDetail detail, Place? place) searchComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetail detail, Place? place)? searchComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceDetail detail, Place? place)? searchComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchCompleteEvent value) searchComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchCompleteEvent value)? searchComplete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchCompleteEvent value)? searchComplete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUiEventCopyWith<SearchUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUiEventCopyWith<$Res> {
  factory $SearchUiEventCopyWith(
          SearchUiEvent value, $Res Function(SearchUiEvent) then) =
      _$SearchUiEventCopyWithImpl<$Res, SearchUiEvent>;
  @useResult
  $Res call({PlaceDetail detail, Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$SearchUiEventCopyWithImpl<$Res, $Val extends SearchUiEvent>
    implements $SearchUiEventCopyWith<$Res> {
  _$SearchUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? place = freezed,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as PlaceDetail,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchCompleteEventImplCopyWith<$Res>
    implements $SearchUiEventCopyWith<$Res> {
  factory _$$SearchCompleteEventImplCopyWith(_$SearchCompleteEventImpl value,
          $Res Function(_$SearchCompleteEventImpl) then) =
      __$$SearchCompleteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceDetail detail, Place? place});

  @override
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$SearchCompleteEventImplCopyWithImpl<$Res>
    extends _$SearchUiEventCopyWithImpl<$Res, _$SearchCompleteEventImpl>
    implements _$$SearchCompleteEventImplCopyWith<$Res> {
  __$$SearchCompleteEventImplCopyWithImpl(_$SearchCompleteEventImpl _value,
      $Res Function(_$SearchCompleteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? place = freezed,
  }) {
    return _then(_$SearchCompleteEventImpl(
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as PlaceDetail,
      freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class _$SearchCompleteEventImpl implements SearchCompleteEvent {
  const _$SearchCompleteEventImpl(this.detail, this.place);

  @override
  final PlaceDetail detail;
  @override
  final Place? place;

  @override
  String toString() {
    return 'SearchUiEvent.searchComplete(detail: $detail, place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCompleteEventImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCompleteEventImplCopyWith<_$SearchCompleteEventImpl> get copyWith =>
      __$$SearchCompleteEventImplCopyWithImpl<_$SearchCompleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceDetail detail, Place? place) searchComplete,
  }) {
    return searchComplete(detail, place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceDetail detail, Place? place)? searchComplete,
  }) {
    return searchComplete?.call(detail, place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceDetail detail, Place? place)? searchComplete,
    required TResult orElse(),
  }) {
    if (searchComplete != null) {
      return searchComplete(detail, place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchCompleteEvent value) searchComplete,
  }) {
    return searchComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchCompleteEvent value)? searchComplete,
  }) {
    return searchComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchCompleteEvent value)? searchComplete,
    required TResult orElse(),
  }) {
    if (searchComplete != null) {
      return searchComplete(this);
    }
    return orElse();
  }
}

abstract class SearchCompleteEvent implements SearchUiEvent {
  const factory SearchCompleteEvent(
      final PlaceDetail detail, final Place? place) = _$SearchCompleteEventImpl;

  @override
  PlaceDetail get detail;
  @override
  Place? get place;
  @override
  @JsonKey(ignore: true)
  _$$SearchCompleteEventImplCopyWith<_$SearchCompleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
