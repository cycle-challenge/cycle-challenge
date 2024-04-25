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
  List<TravelModel> get travels => throw _privateConstructorUsedError;
  Set<int> get placeIdSet => throw _privateConstructorUsedError;
  Set<int> get travelIdSet => throw _privateConstructorUsedError;
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
  $Res call(
      {List<PlaceModel> places,
      List<TravelModel> travels,
      Set<int> placeIdSet,
      Set<int> travelIdSet,
      bool isEditing});
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
    Object? travels = null,
    Object? placeIdSet = null,
    Object? travelIdSet = null,
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      travels: null == travels
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<TravelModel>,
      placeIdSet: null == placeIdSet
          ? _value.placeIdSet
          : placeIdSet // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      travelIdSet: null == travelIdSet
          ? _value.travelIdSet
          : travelIdSet // ignore: cast_nullable_to_non_nullable
              as Set<int>,
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
  $Res call(
      {List<PlaceModel> places,
      List<TravelModel> travels,
      Set<int> placeIdSet,
      Set<int> travelIdSet,
      bool isEditing});
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
    Object? travels = null,
    Object? placeIdSet = null,
    Object? travelIdSet = null,
    Object? isEditing = null,
  }) {
    return _then(_$BookmarkStateImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<PlaceModel>,
      travels: null == travels
          ? _value._travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<TravelModel>,
      placeIdSet: null == placeIdSet
          ? _value._placeIdSet
          : placeIdSet // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      travelIdSet: null == travelIdSet
          ? _value._travelIdSet
          : travelIdSet // ignore: cast_nullable_to_non_nullable
              as Set<int>,
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
      {final List<PlaceModel> places = const [],
      final List<TravelModel> travels = const [],
      final Set<int> placeIdSet = const {},
      final Set<int> travelIdSet = const {},
      this.isEditing = false})
      : _places = places,
        _travels = travels,
        _placeIdSet = placeIdSet,
        _travelIdSet = travelIdSet;

  final List<PlaceModel> _places;
  @override
  @JsonKey()
  List<PlaceModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  final List<TravelModel> _travels;
  @override
  @JsonKey()
  List<TravelModel> get travels {
    if (_travels is EqualUnmodifiableListView) return _travels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_travels);
  }

  final Set<int> _placeIdSet;
  @override
  @JsonKey()
  Set<int> get placeIdSet {
    if (_placeIdSet is EqualUnmodifiableSetView) return _placeIdSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_placeIdSet);
  }

  final Set<int> _travelIdSet;
  @override
  @JsonKey()
  Set<int> get travelIdSet {
    if (_travelIdSet is EqualUnmodifiableSetView) return _travelIdSet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_travelIdSet);
  }

  @override
  @JsonKey()
  final bool isEditing;

  @override
  String toString() {
    return 'BookmarkState(places: $places, travels: $travels, placeIdSet: $placeIdSet, travelIdSet: $travelIdSet, isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkStateImpl &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality().equals(other._travels, _travels) &&
            const DeepCollectionEquality()
                .equals(other._placeIdSet, _placeIdSet) &&
            const DeepCollectionEquality()
                .equals(other._travelIdSet, _travelIdSet) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_places),
      const DeepCollectionEquality().hash(_travels),
      const DeepCollectionEquality().hash(_placeIdSet),
      const DeepCollectionEquality().hash(_travelIdSet),
      isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkStateImplCopyWith<_$BookmarkStateImpl> get copyWith =>
      __$$BookmarkStateImplCopyWithImpl<_$BookmarkStateImpl>(this, _$identity);
}

abstract class _BookmarkState implements BookmarkState {
  factory _BookmarkState(
      {final List<PlaceModel> places,
      final List<TravelModel> travels,
      final Set<int> placeIdSet,
      final Set<int> travelIdSet,
      final bool isEditing}) = _$BookmarkStateImpl;

  @override
  List<PlaceModel> get places;
  @override
  List<TravelModel> get travels;
  @override
  Set<int> get placeIdSet;
  @override
  Set<int> get travelIdSet;
  @override
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkStateImplCopyWith<_$BookmarkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
