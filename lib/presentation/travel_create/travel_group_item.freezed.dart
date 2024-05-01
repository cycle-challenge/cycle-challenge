// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_group_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelGroupItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) label,
    required TResult Function(Visit visit) visit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? label,
    TResult? Function(Visit visit)? visit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? label,
    TResult Function(Visit visit)? visit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Label value) label,
    required TResult Function(_Visit value) visit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Label value)? label,
    TResult? Function(_Visit value)? visit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Visit value)? visit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelGroupItemCopyWith<$Res> {
  factory $TravelGroupItemCopyWith(
          TravelGroupItem value, $Res Function(TravelGroupItem) then) =
      _$TravelGroupItemCopyWithImpl<$Res, TravelGroupItem>;
}

/// @nodoc
class _$TravelGroupItemCopyWithImpl<$Res, $Val extends TravelGroupItem>
    implements $TravelGroupItemCopyWith<$Res> {
  _$TravelGroupItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LabelImplCopyWith<$Res> {
  factory _$$LabelImplCopyWith(
          _$LabelImpl value, $Res Function(_$LabelImpl) then) =
      __$$LabelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date});
}

/// @nodoc
class __$$LabelImplCopyWithImpl<$Res>
    extends _$TravelGroupItemCopyWithImpl<$Res, _$LabelImpl>
    implements _$$LabelImplCopyWith<$Res> {
  __$$LabelImplCopyWithImpl(
      _$LabelImpl _value, $Res Function(_$LabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$LabelImpl(
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$LabelImpl implements _Label {
  const _$LabelImpl(this.date);

  @override
  final DateTime? date;

  @override
  String toString() {
    return 'TravelGroupItem.label(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      __$$LabelImplCopyWithImpl<_$LabelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) label,
    required TResult Function(Visit visit) visit,
  }) {
    return label(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? label,
    TResult? Function(Visit visit)? visit,
  }) {
    return label?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? label,
    TResult Function(Visit visit)? visit,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Label value) label,
    required TResult Function(_Visit value) visit,
  }) {
    return label(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Label value)? label,
    TResult? Function(_Visit value)? visit,
  }) {
    return label?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Visit value)? visit,
    required TResult orElse(),
  }) {
    if (label != null) {
      return label(this);
    }
    return orElse();
  }
}

abstract class _Label implements TravelGroupItem {
  const factory _Label(final DateTime? date) = _$LabelImpl;

  DateTime? get date;
  @JsonKey(ignore: true)
  _$$LabelImplCopyWith<_$LabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VisitImplCopyWith<$Res> {
  factory _$$VisitImplCopyWith(
          _$VisitImpl value, $Res Function(_$VisitImpl) then) =
      __$$VisitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Visit visit});

  $VisitCopyWith<$Res> get visit;
}

/// @nodoc
class __$$VisitImplCopyWithImpl<$Res>
    extends _$TravelGroupItemCopyWithImpl<$Res, _$VisitImpl>
    implements _$$VisitImplCopyWith<$Res> {
  __$$VisitImplCopyWithImpl(
      _$VisitImpl _value, $Res Function(_$VisitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visit = null,
  }) {
    return _then(_$VisitImpl(
      null == visit
          ? _value.visit
          : visit // ignore: cast_nullable_to_non_nullable
              as Visit,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VisitCopyWith<$Res> get visit {
    return $VisitCopyWith<$Res>(_value.visit, (value) {
      return _then(_value.copyWith(visit: value));
    });
  }
}

/// @nodoc

class _$VisitImpl implements _Visit {
  const _$VisitImpl(this.visit);

  @override
  final Visit visit;

  @override
  String toString() {
    return 'TravelGroupItem.visit(visit: $visit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitImpl &&
            (identical(other.visit, visit) || other.visit == visit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitImplCopyWith<_$VisitImpl> get copyWith =>
      __$$VisitImplCopyWithImpl<_$VisitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? date) label,
    required TResult Function(Visit visit) visit,
  }) {
    return visit(this.visit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date)? label,
    TResult? Function(Visit visit)? visit,
  }) {
    return visit?.call(this.visit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date)? label,
    TResult Function(Visit visit)? visit,
    required TResult orElse(),
  }) {
    if (visit != null) {
      return visit(this.visit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Label value) label,
    required TResult Function(_Visit value) visit,
  }) {
    return visit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Label value)? label,
    TResult? Function(_Visit value)? visit,
  }) {
    return visit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Label value)? label,
    TResult Function(_Visit value)? visit,
    required TResult orElse(),
  }) {
    if (visit != null) {
      return visit(this);
    }
    return orElse();
  }
}

abstract class _Visit implements TravelGroupItem {
  const factory _Visit(final Visit visit) = _$VisitImpl;

  Visit get visit;
  @JsonKey(ignore: true)
  _$$VisitImplCopyWith<_$VisitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
