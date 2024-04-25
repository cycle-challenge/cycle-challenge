// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookmarkState {
  List<PlaceModel> get places => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkStateCopyWith<BookmarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
  @useResult
  $Res call({List<PlaceModel> places, bool isEditing});
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkStateImplCopyWith<$Res>
    implements $BookmarkStateCopyWith<$Res> {
  factory _$$BookmarkStateImplCopyWith(
          _$BookmarkStateImpl value, $Res Function(_$BookmarkStateImpl) then) =
      __$$BookmarkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PlaceModel> places, bool isEditing});
}

/// @nodoc
class __$$BookmarkStateImplCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkStateImpl>
    implements _$$BookmarkStateImplCopyWith<$Res> {
  __$$BookmarkStateImplCopyWithImpl(
      _$BookmarkStateImpl _value, $Res Function(_$BookmarkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? isEditing = null,
  }) {
    return _then(_$BookmarkStateImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BookmarkStateImpl implements _BookmarkState {
  _$BookmarkStateImpl(
      {final List<PlaceModel> places = const [], this.isEditing = false})
      : _places = places;

  final List<PlaceModel> _places;
  @override
  @JsonKey()
  List<PlaceModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  @JsonKey()
  final bool isEditing;

  @override
  String toString() {
    return 'BookmarkState(places: $places, isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkStateImpl &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_places), isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkStateImplCopyWith<_$BookmarkStateImpl> get copyWith =>
      __$$BookmarkStateImplCopyWithImpl<_$BookmarkStateImpl>(this, _$identity);
}

abstract class _BookmarkState implements BookmarkState {
  factory _BookmarkState(
      {final List<PlaceModel> places,
      final bool isEditing}) = _$BookmarkStateImpl;

  @override
  List<PlaceModel> get places;
  @override
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkStateImplCopyWith<_$BookmarkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
