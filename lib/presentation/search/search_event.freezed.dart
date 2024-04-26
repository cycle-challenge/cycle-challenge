// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String query) search,
    required TResult Function(Place? place) addHistory,
    required TResult Function(Place? place) deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String query)? search,
    TResult? Function(Place? place)? addHistory,
    TResult? Function(Place? place)? deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String query)? search,
    TResult Function(Place? place)? addHistory,
    TResult Function(Place? place)? deleteHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitStateEvent value) initState,
    required TResult Function(SearchQueryEvent value) search,
    required TResult Function(SearchAddHistoryEvent value) addHistory,
    required TResult Function(SearchDeleteHistoryEvent value) deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitStateEvent value)? initState,
    TResult? Function(SearchQueryEvent value)? search,
    TResult? Function(SearchAddHistoryEvent value)? addHistory,
    TResult? Function(SearchDeleteHistoryEvent value)? deleteHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitStateEvent value)? initState,
    TResult Function(SearchQueryEvent value)? search,
    TResult Function(SearchAddHistoryEvent value)? addHistory,
    TResult Function(SearchDeleteHistoryEvent value)? deleteHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitStateEventImplCopyWith<$Res> {
  factory _$$SearchInitStateEventImplCopyWith(_$SearchInitStateEventImpl value,
          $Res Function(_$SearchInitStateEventImpl) then) =
      __$$SearchInitStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitStateEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchInitStateEventImpl>
    implements _$$SearchInitStateEventImplCopyWith<$Res> {
  __$$SearchInitStateEventImplCopyWithImpl(_$SearchInitStateEventImpl _value,
      $Res Function(_$SearchInitStateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitStateEventImpl implements SearchInitStateEvent {
  const _$SearchInitStateEventImpl();

  @override
  String toString() {
    return 'SearchEvent.initState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInitStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String query) search,
    required TResult Function(Place? place) addHistory,
    required TResult Function(Place? place) deleteHistory,
  }) {
    return initState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String query)? search,
    TResult? Function(Place? place)? addHistory,
    TResult? Function(Place? place)? deleteHistory,
  }) {
    return initState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String query)? search,
    TResult Function(Place? place)? addHistory,
    TResult Function(Place? place)? deleteHistory,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitStateEvent value) initState,
    required TResult Function(SearchQueryEvent value) search,
    required TResult Function(SearchAddHistoryEvent value) addHistory,
    required TResult Function(SearchDeleteHistoryEvent value) deleteHistory,
  }) {
    return initState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitStateEvent value)? initState,
    TResult? Function(SearchQueryEvent value)? search,
    TResult? Function(SearchAddHistoryEvent value)? addHistory,
    TResult? Function(SearchDeleteHistoryEvent value)? deleteHistory,
  }) {
    return initState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitStateEvent value)? initState,
    TResult Function(SearchQueryEvent value)? search,
    TResult Function(SearchAddHistoryEvent value)? addHistory,
    TResult Function(SearchDeleteHistoryEvent value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (initState != null) {
      return initState(this);
    }
    return orElse();
  }
}

abstract class SearchInitStateEvent implements SearchEvent {
  const factory SearchInitStateEvent() = _$SearchInitStateEventImpl;
}

/// @nodoc
abstract class _$$SearchQueryEventImplCopyWith<$Res> {
  factory _$$SearchQueryEventImplCopyWith(_$SearchQueryEventImpl value,
          $Res Function(_$SearchQueryEventImpl) then) =
      __$$SearchQueryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchQueryEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchQueryEventImpl>
    implements _$$SearchQueryEventImplCopyWith<$Res> {
  __$$SearchQueryEventImplCopyWithImpl(_$SearchQueryEventImpl _value,
      $Res Function(_$SearchQueryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchQueryEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchQueryEventImpl implements SearchQueryEvent {
  const _$SearchQueryEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchQueryEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchQueryEventImplCopyWith<_$SearchQueryEventImpl> get copyWith =>
      __$$SearchQueryEventImplCopyWithImpl<_$SearchQueryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String query) search,
    required TResult Function(Place? place) addHistory,
    required TResult Function(Place? place) deleteHistory,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String query)? search,
    TResult? Function(Place? place)? addHistory,
    TResult? Function(Place? place)? deleteHistory,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String query)? search,
    TResult Function(Place? place)? addHistory,
    TResult Function(Place? place)? deleteHistory,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitStateEvent value) initState,
    required TResult Function(SearchQueryEvent value) search,
    required TResult Function(SearchAddHistoryEvent value) addHistory,
    required TResult Function(SearchDeleteHistoryEvent value) deleteHistory,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitStateEvent value)? initState,
    TResult? Function(SearchQueryEvent value)? search,
    TResult? Function(SearchAddHistoryEvent value)? addHistory,
    TResult? Function(SearchDeleteHistoryEvent value)? deleteHistory,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitStateEvent value)? initState,
    TResult Function(SearchQueryEvent value)? search,
    TResult Function(SearchAddHistoryEvent value)? addHistory,
    TResult Function(SearchDeleteHistoryEvent value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchQueryEvent implements SearchEvent {
  const factory SearchQueryEvent(final String query) = _$SearchQueryEventImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchQueryEventImplCopyWith<_$SearchQueryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchAddHistoryEventImplCopyWith<$Res> {
  factory _$$SearchAddHistoryEventImplCopyWith(
          _$SearchAddHistoryEventImpl value,
          $Res Function(_$SearchAddHistoryEventImpl) then) =
      __$$SearchAddHistoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$SearchAddHistoryEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchAddHistoryEventImpl>
    implements _$$SearchAddHistoryEventImplCopyWith<$Res> {
  __$$SearchAddHistoryEventImplCopyWithImpl(_$SearchAddHistoryEventImpl _value,
      $Res Function(_$SearchAddHistoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_$SearchAddHistoryEventImpl(
      freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc

class _$SearchAddHistoryEventImpl implements SearchAddHistoryEvent {
  const _$SearchAddHistoryEventImpl(this.place);

  @override
  final Place? place;

  @override
  String toString() {
    return 'SearchEvent.addHistory(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAddHistoryEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAddHistoryEventImplCopyWith<_$SearchAddHistoryEventImpl>
      get copyWith => __$$SearchAddHistoryEventImplCopyWithImpl<
          _$SearchAddHistoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String query) search,
    required TResult Function(Place? place) addHistory,
    required TResult Function(Place? place) deleteHistory,
  }) {
    return addHistory(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String query)? search,
    TResult? Function(Place? place)? addHistory,
    TResult? Function(Place? place)? deleteHistory,
  }) {
    return addHistory?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String query)? search,
    TResult Function(Place? place)? addHistory,
    TResult Function(Place? place)? deleteHistory,
    required TResult orElse(),
  }) {
    if (addHistory != null) {
      return addHistory(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitStateEvent value) initState,
    required TResult Function(SearchQueryEvent value) search,
    required TResult Function(SearchAddHistoryEvent value) addHistory,
    required TResult Function(SearchDeleteHistoryEvent value) deleteHistory,
  }) {
    return addHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitStateEvent value)? initState,
    TResult? Function(SearchQueryEvent value)? search,
    TResult? Function(SearchAddHistoryEvent value)? addHistory,
    TResult? Function(SearchDeleteHistoryEvent value)? deleteHistory,
  }) {
    return addHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitStateEvent value)? initState,
    TResult Function(SearchQueryEvent value)? search,
    TResult Function(SearchAddHistoryEvent value)? addHistory,
    TResult Function(SearchDeleteHistoryEvent value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (addHistory != null) {
      return addHistory(this);
    }
    return orElse();
  }
}

abstract class SearchAddHistoryEvent implements SearchEvent {
  const factory SearchAddHistoryEvent(final Place? place) =
      _$SearchAddHistoryEventImpl;

  Place? get place;
  @JsonKey(ignore: true)
  _$$SearchAddHistoryEventImplCopyWith<_$SearchAddHistoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchDeleteHistoryEventImplCopyWith<$Res> {
  factory _$$SearchDeleteHistoryEventImplCopyWith(
          _$SearchDeleteHistoryEventImpl value,
          $Res Function(_$SearchDeleteHistoryEventImpl) then) =
      __$$SearchDeleteHistoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$SearchDeleteHistoryEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchDeleteHistoryEventImpl>
    implements _$$SearchDeleteHistoryEventImplCopyWith<$Res> {
  __$$SearchDeleteHistoryEventImplCopyWithImpl(
      _$SearchDeleteHistoryEventImpl _value,
      $Res Function(_$SearchDeleteHistoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(_$SearchDeleteHistoryEventImpl(
      freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc

class _$SearchDeleteHistoryEventImpl implements SearchDeleteHistoryEvent {
  const _$SearchDeleteHistoryEventImpl(this.place);

  @override
  final Place? place;

  @override
  String toString() {
    return 'SearchEvent.deleteHistory(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchDeleteHistoryEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchDeleteHistoryEventImplCopyWith<_$SearchDeleteHistoryEventImpl>
      get copyWith => __$$SearchDeleteHistoryEventImplCopyWithImpl<
          _$SearchDeleteHistoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initState,
    required TResult Function(String query) search,
    required TResult Function(Place? place) addHistory,
    required TResult Function(Place? place) deleteHistory,
  }) {
    return deleteHistory(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initState,
    TResult? Function(String query)? search,
    TResult? Function(Place? place)? addHistory,
    TResult? Function(Place? place)? deleteHistory,
  }) {
    return deleteHistory?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initState,
    TResult Function(String query)? search,
    TResult Function(Place? place)? addHistory,
    TResult Function(Place? place)? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitStateEvent value) initState,
    required TResult Function(SearchQueryEvent value) search,
    required TResult Function(SearchAddHistoryEvent value) addHistory,
    required TResult Function(SearchDeleteHistoryEvent value) deleteHistory,
  }) {
    return deleteHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitStateEvent value)? initState,
    TResult? Function(SearchQueryEvent value)? search,
    TResult? Function(SearchAddHistoryEvent value)? addHistory,
    TResult? Function(SearchDeleteHistoryEvent value)? deleteHistory,
  }) {
    return deleteHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitStateEvent value)? initState,
    TResult Function(SearchQueryEvent value)? search,
    TResult Function(SearchAddHistoryEvent value)? addHistory,
    TResult Function(SearchDeleteHistoryEvent value)? deleteHistory,
    required TResult orElse(),
  }) {
    if (deleteHistory != null) {
      return deleteHistory(this);
    }
    return orElse();
  }
}

abstract class SearchDeleteHistoryEvent implements SearchEvent {
  const factory SearchDeleteHistoryEvent(final Place? place) =
      _$SearchDeleteHistoryEventImpl;

  Place? get place;
  @JsonKey(ignore: true)
  _$$SearchDeleteHistoryEventImplCopyWith<_$SearchDeleteHistoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
