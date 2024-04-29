// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlaceDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailEventCopyWith<$Res> {
  factory $PlaceDetailEventCopyWith(
          PlaceDetailEvent value, $Res Function(PlaceDetailEvent) then) =
      _$PlaceDetailEventCopyWithImpl<$Res, PlaceDetailEvent>;
}

/// @nodoc
class _$PlaceDetailEventCopyWithImpl<$Res, $Val extends PlaceDetailEvent>
    implements $PlaceDetailEventCopyWith<$Res> {
  _$PlaceDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPlaceDetailEventImplCopyWith<$Res> {
  factory _$$LoadPlaceDetailEventImplCopyWith(_$LoadPlaceDetailEventImpl value,
          $Res Function(_$LoadPlaceDetailEventImpl) then) =
      __$$LoadPlaceDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlaceModel place});
}

/// @nodoc
class __$$LoadPlaceDetailEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$LoadPlaceDetailEventImpl>
    implements _$$LoadPlaceDetailEventImplCopyWith<$Res> {
  __$$LoadPlaceDetailEventImplCopyWithImpl(_$LoadPlaceDetailEventImpl _value,
      $Res Function(_$LoadPlaceDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$LoadPlaceDetailEventImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceModel,
    ));
  }
}

/// @nodoc

class _$LoadPlaceDetailEventImpl implements LoadPlaceDetailEvent {
  const _$LoadPlaceDetailEventImpl(this.place);

  @override
  final PlaceModel place;

  @override
  String toString() {
    return 'PlaceDetailEvent.load(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadPlaceDetailEventImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadPlaceDetailEventImplCopyWith<_$LoadPlaceDetailEventImpl>
      get copyWith =>
          __$$LoadPlaceDetailEventImplCopyWithImpl<_$LoadPlaceDetailEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) {
    return load(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) {
    return load?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadPlaceDetailEvent implements PlaceDetailEvent {
  const factory LoadPlaceDetailEvent(final PlaceModel place) =
      _$LoadPlaceDetailEventImpl;

  PlaceModel get place;
  @JsonKey(ignore: true)
  _$$LoadPlaceDetailEventImplCopyWith<_$LoadPlaceDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleBusinessHourExpandedEventImplCopyWith<$Res> {
  factory _$$ToggleBusinessHourExpandedEventImplCopyWith(
          _$ToggleBusinessHourExpandedEventImpl value,
          $Res Function(_$ToggleBusinessHourExpandedEventImpl) then) =
      __$$ToggleBusinessHourExpandedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleBusinessHourExpandedEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res,
        _$ToggleBusinessHourExpandedEventImpl>
    implements _$$ToggleBusinessHourExpandedEventImplCopyWith<$Res> {
  __$$ToggleBusinessHourExpandedEventImplCopyWithImpl(
      _$ToggleBusinessHourExpandedEventImpl _value,
      $Res Function(_$ToggleBusinessHourExpandedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleBusinessHourExpandedEventImpl
    implements ToggleBusinessHourExpandedEvent {
  const _$ToggleBusinessHourExpandedEventImpl();

  @override
  String toString() {
    return 'PlaceDetailEvent.toggleBusinessHourExpanded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleBusinessHourExpandedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) {
    return toggleBusinessHourExpanded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) {
    return toggleBusinessHourExpanded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) {
    if (toggleBusinessHourExpanded != null) {
      return toggleBusinessHourExpanded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) {
    return toggleBusinessHourExpanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) {
    return toggleBusinessHourExpanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) {
    if (toggleBusinessHourExpanded != null) {
      return toggleBusinessHourExpanded(this);
    }
    return orElse();
  }
}

abstract class ToggleBusinessHourExpandedEvent implements PlaceDetailEvent {
  const factory ToggleBusinessHourExpandedEvent() =
      _$ToggleBusinessHourExpandedEventImpl;
}

/// @nodoc
abstract class _$$FetchPlaceImageEventImplCopyWith<$Res> {
  factory _$$FetchPlaceImageEventImplCopyWith(_$FetchPlaceImageEventImpl value,
          $Res Function(_$FetchPlaceImageEventImpl) then) =
      __$$FetchPlaceImageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int placeID, int page, int pageSize});
}

/// @nodoc
class __$$FetchPlaceImageEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$FetchPlaceImageEventImpl>
    implements _$$FetchPlaceImageEventImplCopyWith<$Res> {
  __$$FetchPlaceImageEventImplCopyWithImpl(_$FetchPlaceImageEventImpl _value,
      $Res Function(_$FetchPlaceImageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeID = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$FetchPlaceImageEventImpl(
      null == placeID
          ? _value.placeID
          : placeID // ignore: cast_nullable_to_non_nullable
              as int,
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchPlaceImageEventImpl implements FetchPlaceImageEvent {
  const _$FetchPlaceImageEventImpl(this.placeID, this.page, this.pageSize);

  @override
  final int placeID;
  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'PlaceDetailEvent.fetchImage(placeID: $placeID, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPlaceImageEventImpl &&
            (identical(other.placeID, placeID) || other.placeID == placeID) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeID, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPlaceImageEventImplCopyWith<_$FetchPlaceImageEventImpl>
      get copyWith =>
          __$$FetchPlaceImageEventImplCopyWithImpl<_$FetchPlaceImageEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) {
    return fetchImage(placeID, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) {
    return fetchImage?.call(placeID, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) {
    if (fetchImage != null) {
      return fetchImage(placeID, page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) {
    return fetchImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) {
    return fetchImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) {
    if (fetchImage != null) {
      return fetchImage(this);
    }
    return orElse();
  }
}

abstract class FetchPlaceImageEvent implements PlaceDetailEvent {
  const factory FetchPlaceImageEvent(
          final int placeID, final int page, final int pageSize) =
      _$FetchPlaceImageEventImpl;

  int get placeID;
  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$$FetchPlaceImageEventImplCopyWith<_$FetchPlaceImageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CallPhoneEventImplCopyWith<$Res> {
  factory _$$CallPhoneEventImplCopyWith(_$CallPhoneEventImpl value,
          $Res Function(_$CallPhoneEventImpl) then) =
      __$$CallPhoneEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phoneNumber});
}

/// @nodoc
class __$$CallPhoneEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$CallPhoneEventImpl>
    implements _$$CallPhoneEventImplCopyWith<$Res> {
  __$$CallPhoneEventImplCopyWithImpl(
      _$CallPhoneEventImpl _value, $Res Function(_$CallPhoneEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$CallPhoneEventImpl(
      freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CallPhoneEventImpl implements CallPhoneEvent {
  const _$CallPhoneEventImpl(this.phoneNumber);

  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'PlaceDetailEvent.callPhone(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallPhoneEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallPhoneEventImplCopyWith<_$CallPhoneEventImpl> get copyWith =>
      __$$CallPhoneEventImplCopyWithImpl<_$CallPhoneEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) {
    return callPhone(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) {
    return callPhone?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) {
    if (callPhone != null) {
      return callPhone(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) {
    return callPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) {
    return callPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) {
    if (callPhone != null) {
      return callPhone(this);
    }
    return orElse();
  }
}

abstract class CallPhoneEvent implements PlaceDetailEvent {
  const factory CallPhoneEvent(final String? phoneNumber) =
      _$CallPhoneEventImpl;

  String? get phoneNumber;
  @JsonKey(ignore: true)
  _$$CallPhoneEventImplCopyWith<_$CallPhoneEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CopyTextEventImplCopyWith<$Res> {
  factory _$$CopyTextEventImplCopyWith(
          _$CopyTextEventImpl value, $Res Function(_$CopyTextEventImpl) then) =
      __$$CopyTextEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$CopyTextEventImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$CopyTextEventImpl>
    implements _$$CopyTextEventImplCopyWith<$Res> {
  __$$CopyTextEventImplCopyWithImpl(
      _$CopyTextEventImpl _value, $Res Function(_$CopyTextEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$CopyTextEventImpl(
      freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CopyTextEventImpl implements CopyTextEvent {
  const _$CopyTextEventImpl(this.text);

  @override
  final String? text;

  @override
  String toString() {
    return 'PlaceDetailEvent.copyText(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyTextEventImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyTextEventImplCopyWith<_$CopyTextEventImpl> get copyWith =>
      __$$CopyTextEventImplCopyWithImpl<_$CopyTextEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) {
    return copyText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) {
    return copyText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) {
    if (copyText != null) {
      return copyText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) {
    return copyText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) {
    return copyText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) {
    if (copyText != null) {
      return copyText(this);
    }
    return orElse();
  }
}

abstract class CopyTextEvent implements PlaceDetailEvent {
  const factory CopyTextEvent(final String? text) = _$CopyTextEventImpl;

  String? get text;
  @JsonKey(ignore: true)
  _$$CopyTextEventImplCopyWith<_$CopyTextEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LaunchURLImplCopyWith<$Res> {
  factory _$$LaunchURLImplCopyWith(
          _$LaunchURLImpl value, $Res Function(_$LaunchURLImpl) then) =
      __$$LaunchURLImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$LaunchURLImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$LaunchURLImpl>
    implements _$$LaunchURLImplCopyWith<$Res> {
  __$$LaunchURLImplCopyWithImpl(
      _$LaunchURLImpl _value, $Res Function(_$LaunchURLImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$LaunchURLImpl(
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LaunchURLImpl implements LaunchURL {
  const _$LaunchURLImpl(this.url);

  @override
  final String? url;

  @override
  String toString() {
    return 'PlaceDetailEvent.launchURL(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchURLImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchURLImplCopyWith<_$LaunchURLImpl> get copyWith =>
      __$$LaunchURLImplCopyWithImpl<_$LaunchURLImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PlaceModel place) load,
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
  }) {
    return launchURL(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PlaceModel place)? load,
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
  }) {
    return launchURL?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PlaceModel place)? load,
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    required TResult orElse(),
  }) {
    if (launchURL != null) {
      return launchURL(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPlaceDetailEvent value) load,
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
  }) {
    return launchURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPlaceDetailEvent value)? load,
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
  }) {
    return launchURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPlaceDetailEvent value)? load,
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    required TResult orElse(),
  }) {
    if (launchURL != null) {
      return launchURL(this);
    }
    return orElse();
  }
}

abstract class LaunchURL implements PlaceDetailEvent {
  const factory LaunchURL(final String? url) = _$LaunchURLImpl;

  String? get url;
  @JsonKey(ignore: true)
  _$$LaunchURLImplCopyWith<_$LaunchURLImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
