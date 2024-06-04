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
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
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
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return toggleBusinessHourExpanded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return toggleBusinessHourExpanded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
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
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return toggleBusinessHourExpanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return toggleBusinessHourExpanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
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
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return fetchImage(placeID, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return fetchImage?.call(placeID, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
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
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return fetchImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return fetchImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
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
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return callPhone(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return callPhone?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
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
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return callPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return callPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
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
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return copyText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return copyText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
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
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return copyText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return copyText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
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
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return launchURL(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return launchURL?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
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
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return launchURL(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return launchURL?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
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

/// @nodoc
abstract class _$$ChangeImageIndexImplCopyWith<$Res> {
  factory _$$ChangeImageIndexImplCopyWith(_$ChangeImageIndexImpl value,
          $Res Function(_$ChangeImageIndexImpl) then) =
      __$$ChangeImageIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeImageIndexImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$ChangeImageIndexImpl>
    implements _$$ChangeImageIndexImplCopyWith<$Res> {
  __$$ChangeImageIndexImplCopyWithImpl(_$ChangeImageIndexImpl _value,
      $Res Function(_$ChangeImageIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeImageIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeImageIndexImpl implements _ChangeImageIndex {
  const _$ChangeImageIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PlaceDetailEvent.changeImageIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImageIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImageIndexImplCopyWith<_$ChangeImageIndexImpl> get copyWith =>
      __$$ChangeImageIndexImplCopyWithImpl<_$ChangeImageIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return changeImageIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return changeImageIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
    required TResult orElse(),
  }) {
    if (changeImageIndex != null) {
      return changeImageIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return changeImageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return changeImageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
    required TResult orElse(),
  }) {
    if (changeImageIndex != null) {
      return changeImageIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeImageIndex implements PlaceDetailEvent {
  const factory _ChangeImageIndex(final int index) = _$ChangeImageIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangeImageIndexImplCopyWith<_$ChangeImageIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateReviewImplCopyWith<$Res> {
  factory _$$CreateReviewImplCopyWith(
          _$CreateReviewImpl value, $Res Function(_$CreateReviewImpl) then) =
      __$$CreateReviewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rating, bool wantsToRevisit, String? comment});
}

/// @nodoc
class __$$CreateReviewImplCopyWithImpl<$Res>
    extends _$PlaceDetailEventCopyWithImpl<$Res, _$CreateReviewImpl>
    implements _$$CreateReviewImplCopyWith<$Res> {
  __$$CreateReviewImplCopyWithImpl(
      _$CreateReviewImpl _value, $Res Function(_$CreateReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
    Object? wantsToRevisit = null,
    Object? comment = freezed,
  }) {
    return _then(_$CreateReviewImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      null == wantsToRevisit
          ? _value.wantsToRevisit
          : wantsToRevisit // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateReviewImpl implements _CreateReview {
  const _$CreateReviewImpl(this.rating, this.wantsToRevisit, this.comment);

  @override
  final double rating;
  @override
  final bool wantsToRevisit;
  @override
  final String? comment;

  @override
  String toString() {
    return 'PlaceDetailEvent.createReview(rating: $rating, wantsToRevisit: $wantsToRevisit, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReviewImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.wantsToRevisit, wantsToRevisit) ||
                other.wantsToRevisit == wantsToRevisit) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, wantsToRevisit, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReviewImplCopyWith<_$CreateReviewImpl> get copyWith =>
      __$$CreateReviewImplCopyWithImpl<_$CreateReviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleBusinessHourExpanded,
    required TResult Function(int placeID, int page, int pageSize) fetchImage,
    required TResult Function(String? phoneNumber) callPhone,
    required TResult Function(String? text) copyText,
    required TResult Function(String? url) launchURL,
    required TResult Function(int index) changeImageIndex,
    required TResult Function(
            double rating, bool wantsToRevisit, String? comment)
        createReview,
  }) {
    return createReview(rating, wantsToRevisit, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleBusinessHourExpanded,
    TResult? Function(int placeID, int page, int pageSize)? fetchImage,
    TResult? Function(String? phoneNumber)? callPhone,
    TResult? Function(String? text)? copyText,
    TResult? Function(String? url)? launchURL,
    TResult? Function(int index)? changeImageIndex,
    TResult? Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
  }) {
    return createReview?.call(rating, wantsToRevisit, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleBusinessHourExpanded,
    TResult Function(int placeID, int page, int pageSize)? fetchImage,
    TResult Function(String? phoneNumber)? callPhone,
    TResult Function(String? text)? copyText,
    TResult Function(String? url)? launchURL,
    TResult Function(int index)? changeImageIndex,
    TResult Function(double rating, bool wantsToRevisit, String? comment)?
        createReview,
    required TResult orElse(),
  }) {
    if (createReview != null) {
      return createReview(rating, wantsToRevisit, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleBusinessHourExpandedEvent value)
        toggleBusinessHourExpanded,
    required TResult Function(FetchPlaceImageEvent value) fetchImage,
    required TResult Function(CallPhoneEvent value) callPhone,
    required TResult Function(CopyTextEvent value) copyText,
    required TResult Function(LaunchURL value) launchURL,
    required TResult Function(_ChangeImageIndex value) changeImageIndex,
    required TResult Function(_CreateReview value) createReview,
  }) {
    return createReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult? Function(FetchPlaceImageEvent value)? fetchImage,
    TResult? Function(CallPhoneEvent value)? callPhone,
    TResult? Function(CopyTextEvent value)? copyText,
    TResult? Function(LaunchURL value)? launchURL,
    TResult? Function(_ChangeImageIndex value)? changeImageIndex,
    TResult? Function(_CreateReview value)? createReview,
  }) {
    return createReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleBusinessHourExpandedEvent value)?
        toggleBusinessHourExpanded,
    TResult Function(FetchPlaceImageEvent value)? fetchImage,
    TResult Function(CallPhoneEvent value)? callPhone,
    TResult Function(CopyTextEvent value)? copyText,
    TResult Function(LaunchURL value)? launchURL,
    TResult Function(_ChangeImageIndex value)? changeImageIndex,
    TResult Function(_CreateReview value)? createReview,
    required TResult orElse(),
  }) {
    if (createReview != null) {
      return createReview(this);
    }
    return orElse();
  }
}

abstract class _CreateReview implements PlaceDetailEvent {
  const factory _CreateReview(final double rating, final bool wantsToRevisit,
      final String? comment) = _$CreateReviewImpl;

  double get rating;
  bool get wantsToRevisit;
  String? get comment;
  @JsonKey(ignore: true)
  _$$CreateReviewImplCopyWith<_$CreateReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
