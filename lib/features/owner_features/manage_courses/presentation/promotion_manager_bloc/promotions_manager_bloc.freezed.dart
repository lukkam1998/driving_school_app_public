// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promotions_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromotionsManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPromotionData promotion) addPromotion,
    required TResult Function(EditPromotionData promotion) editPromotion,
    required TResult Function(String promotionId) endPromotion,
    required TResult Function() getPromotions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionData promotion)? addPromotion,
    TResult? Function(EditPromotionData promotion)? editPromotion,
    TResult? Function(String promotionId)? endPromotion,
    TResult? Function()? getPromotions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPromotionData promotion)? addPromotion,
    TResult Function(EditPromotionData promotion)? editPromotion,
    TResult Function(String promotionId)? endPromotion,
    TResult Function()? getPromotions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPromotionEvent value) addPromotion,
    required TResult Function(EditPromotionEvent value) editPromotion,
    required TResult Function(EndPromotionEvent value) endPromotion,
    required TResult Function(GetPromotionsEvent value) getPromotions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionEvent value)? addPromotion,
    TResult? Function(EditPromotionEvent value)? editPromotion,
    TResult? Function(EndPromotionEvent value)? endPromotion,
    TResult? Function(GetPromotionsEvent value)? getPromotions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPromotionEvent value)? addPromotion,
    TResult Function(EditPromotionEvent value)? editPromotion,
    TResult Function(EndPromotionEvent value)? endPromotion,
    TResult Function(GetPromotionsEvent value)? getPromotions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsManagerEventCopyWith<$Res> {
  factory $PromotionsManagerEventCopyWith(PromotionsManagerEvent value,
          $Res Function(PromotionsManagerEvent) then) =
      _$PromotionsManagerEventCopyWithImpl<$Res, PromotionsManagerEvent>;
}

/// @nodoc
class _$PromotionsManagerEventCopyWithImpl<$Res,
        $Val extends PromotionsManagerEvent>
    implements $PromotionsManagerEventCopyWith<$Res> {
  _$PromotionsManagerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPromotionEventCopyWith<$Res> {
  factory _$$AddPromotionEventCopyWith(
          _$AddPromotionEvent value, $Res Function(_$AddPromotionEvent) then) =
      __$$AddPromotionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AddPromotionData promotion});
}

/// @nodoc
class __$$AddPromotionEventCopyWithImpl<$Res>
    extends _$PromotionsManagerEventCopyWithImpl<$Res, _$AddPromotionEvent>
    implements _$$AddPromotionEventCopyWith<$Res> {
  __$$AddPromotionEventCopyWithImpl(
      _$AddPromotionEvent _value, $Res Function(_$AddPromotionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotion = null,
  }) {
    return _then(_$AddPromotionEvent(
      null == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as AddPromotionData,
    ));
  }
}

/// @nodoc

class _$AddPromotionEvent implements AddPromotionEvent {
  const _$AddPromotionEvent(this.promotion);

  @override
  final AddPromotionData promotion;

  @override
  String toString() {
    return 'PromotionsManagerEvent.addPromotion(promotion: $promotion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPromotionEvent &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPromotionEventCopyWith<_$AddPromotionEvent> get copyWith =>
      __$$AddPromotionEventCopyWithImpl<_$AddPromotionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPromotionData promotion) addPromotion,
    required TResult Function(EditPromotionData promotion) editPromotion,
    required TResult Function(String promotionId) endPromotion,
    required TResult Function() getPromotions,
  }) {
    return addPromotion(promotion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionData promotion)? addPromotion,
    TResult? Function(EditPromotionData promotion)? editPromotion,
    TResult? Function(String promotionId)? endPromotion,
    TResult? Function()? getPromotions,
  }) {
    return addPromotion?.call(promotion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPromotionData promotion)? addPromotion,
    TResult Function(EditPromotionData promotion)? editPromotion,
    TResult Function(String promotionId)? endPromotion,
    TResult Function()? getPromotions,
    required TResult orElse(),
  }) {
    if (addPromotion != null) {
      return addPromotion(promotion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPromotionEvent value) addPromotion,
    required TResult Function(EditPromotionEvent value) editPromotion,
    required TResult Function(EndPromotionEvent value) endPromotion,
    required TResult Function(GetPromotionsEvent value) getPromotions,
  }) {
    return addPromotion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionEvent value)? addPromotion,
    TResult? Function(EditPromotionEvent value)? editPromotion,
    TResult? Function(EndPromotionEvent value)? endPromotion,
    TResult? Function(GetPromotionsEvent value)? getPromotions,
  }) {
    return addPromotion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPromotionEvent value)? addPromotion,
    TResult Function(EditPromotionEvent value)? editPromotion,
    TResult Function(EndPromotionEvent value)? endPromotion,
    TResult Function(GetPromotionsEvent value)? getPromotions,
    required TResult orElse(),
  }) {
    if (addPromotion != null) {
      return addPromotion(this);
    }
    return orElse();
  }
}

abstract class AddPromotionEvent implements PromotionsManagerEvent {
  const factory AddPromotionEvent(final AddPromotionData promotion) =
      _$AddPromotionEvent;

  AddPromotionData get promotion;
  @JsonKey(ignore: true)
  _$$AddPromotionEventCopyWith<_$AddPromotionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditPromotionEventCopyWith<$Res> {
  factory _$$EditPromotionEventCopyWith(_$EditPromotionEvent value,
          $Res Function(_$EditPromotionEvent) then) =
      __$$EditPromotionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({EditPromotionData promotion});
}

/// @nodoc
class __$$EditPromotionEventCopyWithImpl<$Res>
    extends _$PromotionsManagerEventCopyWithImpl<$Res, _$EditPromotionEvent>
    implements _$$EditPromotionEventCopyWith<$Res> {
  __$$EditPromotionEventCopyWithImpl(
      _$EditPromotionEvent _value, $Res Function(_$EditPromotionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotion = null,
  }) {
    return _then(_$EditPromotionEvent(
      null == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as EditPromotionData,
    ));
  }
}

/// @nodoc

class _$EditPromotionEvent implements EditPromotionEvent {
  const _$EditPromotionEvent(this.promotion);

  @override
  final EditPromotionData promotion;

  @override
  String toString() {
    return 'PromotionsManagerEvent.editPromotion(promotion: $promotion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPromotionEvent &&
            (identical(other.promotion, promotion) ||
                other.promotion == promotion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPromotionEventCopyWith<_$EditPromotionEvent> get copyWith =>
      __$$EditPromotionEventCopyWithImpl<_$EditPromotionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPromotionData promotion) addPromotion,
    required TResult Function(EditPromotionData promotion) editPromotion,
    required TResult Function(String promotionId) endPromotion,
    required TResult Function() getPromotions,
  }) {
    return editPromotion(promotion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionData promotion)? addPromotion,
    TResult? Function(EditPromotionData promotion)? editPromotion,
    TResult? Function(String promotionId)? endPromotion,
    TResult? Function()? getPromotions,
  }) {
    return editPromotion?.call(promotion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPromotionData promotion)? addPromotion,
    TResult Function(EditPromotionData promotion)? editPromotion,
    TResult Function(String promotionId)? endPromotion,
    TResult Function()? getPromotions,
    required TResult orElse(),
  }) {
    if (editPromotion != null) {
      return editPromotion(promotion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPromotionEvent value) addPromotion,
    required TResult Function(EditPromotionEvent value) editPromotion,
    required TResult Function(EndPromotionEvent value) endPromotion,
    required TResult Function(GetPromotionsEvent value) getPromotions,
  }) {
    return editPromotion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionEvent value)? addPromotion,
    TResult? Function(EditPromotionEvent value)? editPromotion,
    TResult? Function(EndPromotionEvent value)? endPromotion,
    TResult? Function(GetPromotionsEvent value)? getPromotions,
  }) {
    return editPromotion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPromotionEvent value)? addPromotion,
    TResult Function(EditPromotionEvent value)? editPromotion,
    TResult Function(EndPromotionEvent value)? endPromotion,
    TResult Function(GetPromotionsEvent value)? getPromotions,
    required TResult orElse(),
  }) {
    if (editPromotion != null) {
      return editPromotion(this);
    }
    return orElse();
  }
}

abstract class EditPromotionEvent implements PromotionsManagerEvent {
  const factory EditPromotionEvent(final EditPromotionData promotion) =
      _$EditPromotionEvent;

  EditPromotionData get promotion;
  @JsonKey(ignore: true)
  _$$EditPromotionEventCopyWith<_$EditPromotionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndPromotionEventCopyWith<$Res> {
  factory _$$EndPromotionEventCopyWith(
          _$EndPromotionEvent value, $Res Function(_$EndPromotionEvent) then) =
      __$$EndPromotionEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String promotionId});
}

/// @nodoc
class __$$EndPromotionEventCopyWithImpl<$Res>
    extends _$PromotionsManagerEventCopyWithImpl<$Res, _$EndPromotionEvent>
    implements _$$EndPromotionEventCopyWith<$Res> {
  __$$EndPromotionEventCopyWithImpl(
      _$EndPromotionEvent _value, $Res Function(_$EndPromotionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionId = null,
  }) {
    return _then(_$EndPromotionEvent(
      null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndPromotionEvent implements EndPromotionEvent {
  const _$EndPromotionEvent(this.promotionId);

  @override
  final String promotionId;

  @override
  String toString() {
    return 'PromotionsManagerEvent.endPromotion(promotionId: $promotionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndPromotionEvent &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promotionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndPromotionEventCopyWith<_$EndPromotionEvent> get copyWith =>
      __$$EndPromotionEventCopyWithImpl<_$EndPromotionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPromotionData promotion) addPromotion,
    required TResult Function(EditPromotionData promotion) editPromotion,
    required TResult Function(String promotionId) endPromotion,
    required TResult Function() getPromotions,
  }) {
    return endPromotion(promotionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionData promotion)? addPromotion,
    TResult? Function(EditPromotionData promotion)? editPromotion,
    TResult? Function(String promotionId)? endPromotion,
    TResult? Function()? getPromotions,
  }) {
    return endPromotion?.call(promotionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPromotionData promotion)? addPromotion,
    TResult Function(EditPromotionData promotion)? editPromotion,
    TResult Function(String promotionId)? endPromotion,
    TResult Function()? getPromotions,
    required TResult orElse(),
  }) {
    if (endPromotion != null) {
      return endPromotion(promotionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPromotionEvent value) addPromotion,
    required TResult Function(EditPromotionEvent value) editPromotion,
    required TResult Function(EndPromotionEvent value) endPromotion,
    required TResult Function(GetPromotionsEvent value) getPromotions,
  }) {
    return endPromotion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionEvent value)? addPromotion,
    TResult? Function(EditPromotionEvent value)? editPromotion,
    TResult? Function(EndPromotionEvent value)? endPromotion,
    TResult? Function(GetPromotionsEvent value)? getPromotions,
  }) {
    return endPromotion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPromotionEvent value)? addPromotion,
    TResult Function(EditPromotionEvent value)? editPromotion,
    TResult Function(EndPromotionEvent value)? endPromotion,
    TResult Function(GetPromotionsEvent value)? getPromotions,
    required TResult orElse(),
  }) {
    if (endPromotion != null) {
      return endPromotion(this);
    }
    return orElse();
  }
}

abstract class EndPromotionEvent implements PromotionsManagerEvent {
  const factory EndPromotionEvent(final String promotionId) =
      _$EndPromotionEvent;

  String get promotionId;
  @JsonKey(ignore: true)
  _$$EndPromotionEventCopyWith<_$EndPromotionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPromotionsEventCopyWith<$Res> {
  factory _$$GetPromotionsEventCopyWith(_$GetPromotionsEvent value,
          $Res Function(_$GetPromotionsEvent) then) =
      __$$GetPromotionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPromotionsEventCopyWithImpl<$Res>
    extends _$PromotionsManagerEventCopyWithImpl<$Res, _$GetPromotionsEvent>
    implements _$$GetPromotionsEventCopyWith<$Res> {
  __$$GetPromotionsEventCopyWithImpl(
      _$GetPromotionsEvent _value, $Res Function(_$GetPromotionsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPromotionsEvent implements GetPromotionsEvent {
  const _$GetPromotionsEvent();

  @override
  String toString() {
    return 'PromotionsManagerEvent.getPromotions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPromotionsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddPromotionData promotion) addPromotion,
    required TResult Function(EditPromotionData promotion) editPromotion,
    required TResult Function(String promotionId) endPromotion,
    required TResult Function() getPromotions,
  }) {
    return getPromotions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionData promotion)? addPromotion,
    TResult? Function(EditPromotionData promotion)? editPromotion,
    TResult? Function(String promotionId)? endPromotion,
    TResult? Function()? getPromotions,
  }) {
    return getPromotions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddPromotionData promotion)? addPromotion,
    TResult Function(EditPromotionData promotion)? editPromotion,
    TResult Function(String promotionId)? endPromotion,
    TResult Function()? getPromotions,
    required TResult orElse(),
  }) {
    if (getPromotions != null) {
      return getPromotions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPromotionEvent value) addPromotion,
    required TResult Function(EditPromotionEvent value) editPromotion,
    required TResult Function(EndPromotionEvent value) endPromotion,
    required TResult Function(GetPromotionsEvent value) getPromotions,
  }) {
    return getPromotions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPromotionEvent value)? addPromotion,
    TResult? Function(EditPromotionEvent value)? editPromotion,
    TResult? Function(EndPromotionEvent value)? endPromotion,
    TResult? Function(GetPromotionsEvent value)? getPromotions,
  }) {
    return getPromotions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPromotionEvent value)? addPromotion,
    TResult Function(EditPromotionEvent value)? editPromotion,
    TResult Function(EndPromotionEvent value)? endPromotion,
    TResult Function(GetPromotionsEvent value)? getPromotions,
    required TResult orElse(),
  }) {
    if (getPromotions != null) {
      return getPromotions(this);
    }
    return orElse();
  }
}

abstract class GetPromotionsEvent implements PromotionsManagerEvent {
  const factory GetPromotionsEvent() = _$GetPromotionsEvent;
}

/// @nodoc
mixin _$PromotionsManagerState {
  List<Promotion> get runningPromotions => throw _privateConstructorUsedError;
  List<Promotion> get expiredPromotions => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  PromotionsActionResult? get actionResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromotionsManagerStateCopyWith<PromotionsManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsManagerStateCopyWith<$Res> {
  factory $PromotionsManagerStateCopyWith(PromotionsManagerState value,
          $Res Function(PromotionsManagerState) then) =
      _$PromotionsManagerStateCopyWithImpl<$Res, PromotionsManagerState>;
  @useResult
  $Res call(
      {List<Promotion> runningPromotions,
      List<Promotion> expiredPromotions,
      bool isLoading,
      bool hasError,
      PromotionsActionResult? actionResult});
}

/// @nodoc
class _$PromotionsManagerStateCopyWithImpl<$Res,
        $Val extends PromotionsManagerState>
    implements $PromotionsManagerStateCopyWith<$Res> {
  _$PromotionsManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningPromotions = null,
    Object? expiredPromotions = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionResult = freezed,
  }) {
    return _then(_value.copyWith(
      runningPromotions: null == runningPromotions
          ? _value.runningPromotions
          : runningPromotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
      expiredPromotions: null == expiredPromotions
          ? _value.expiredPromotions
          : expiredPromotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionResult: freezed == actionResult
          ? _value.actionResult
          : actionResult // ignore: cast_nullable_to_non_nullable
              as PromotionsActionResult?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PromotionManagerStateCopyWith<$Res>
    implements $PromotionsManagerStateCopyWith<$Res> {
  factory _$$_PromotionManagerStateCopyWith(_$_PromotionManagerState value,
          $Res Function(_$_PromotionManagerState) then) =
      __$$_PromotionManagerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Promotion> runningPromotions,
      List<Promotion> expiredPromotions,
      bool isLoading,
      bool hasError,
      PromotionsActionResult? actionResult});
}

/// @nodoc
class __$$_PromotionManagerStateCopyWithImpl<$Res>
    extends _$PromotionsManagerStateCopyWithImpl<$Res, _$_PromotionManagerState>
    implements _$$_PromotionManagerStateCopyWith<$Res> {
  __$$_PromotionManagerStateCopyWithImpl(_$_PromotionManagerState _value,
      $Res Function(_$_PromotionManagerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? runningPromotions = null,
    Object? expiredPromotions = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? actionResult = freezed,
  }) {
    return _then(_$_PromotionManagerState(
      runningPromotions: null == runningPromotions
          ? _value._runningPromotions
          : runningPromotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
      expiredPromotions: null == expiredPromotions
          ? _value._expiredPromotions
          : expiredPromotions // ignore: cast_nullable_to_non_nullable
              as List<Promotion>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      actionResult: freezed == actionResult
          ? _value.actionResult
          : actionResult // ignore: cast_nullable_to_non_nullable
              as PromotionsActionResult?,
    ));
  }
}

/// @nodoc

class _$_PromotionManagerState implements _PromotionManagerState {
  const _$_PromotionManagerState(
      {required final List<Promotion> runningPromotions,
      required final List<Promotion> expiredPromotions,
      required this.isLoading,
      required this.hasError,
      this.actionResult})
      : _runningPromotions = runningPromotions,
        _expiredPromotions = expiredPromotions;

  final List<Promotion> _runningPromotions;
  @override
  List<Promotion> get runningPromotions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_runningPromotions);
  }

  final List<Promotion> _expiredPromotions;
  @override
  List<Promotion> get expiredPromotions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expiredPromotions);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final PromotionsActionResult? actionResult;

  @override
  String toString() {
    return 'PromotionsManagerState(runningPromotions: $runningPromotions, expiredPromotions: $expiredPromotions, isLoading: $isLoading, hasError: $hasError, actionResult: $actionResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromotionManagerState &&
            const DeepCollectionEquality()
                .equals(other._runningPromotions, _runningPromotions) &&
            const DeepCollectionEquality()
                .equals(other._expiredPromotions, _expiredPromotions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.actionResult, actionResult) ||
                other.actionResult == actionResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_runningPromotions),
      const DeepCollectionEquality().hash(_expiredPromotions),
      isLoading,
      hasError,
      actionResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PromotionManagerStateCopyWith<_$_PromotionManagerState> get copyWith =>
      __$$_PromotionManagerStateCopyWithImpl<_$_PromotionManagerState>(
          this, _$identity);
}

abstract class _PromotionManagerState implements PromotionsManagerState {
  const factory _PromotionManagerState(
      {required final List<Promotion> runningPromotions,
      required final List<Promotion> expiredPromotions,
      required final bool isLoading,
      required final bool hasError,
      final PromotionsActionResult? actionResult}) = _$_PromotionManagerState;

  @override
  List<Promotion> get runningPromotions;
  @override
  List<Promotion> get expiredPromotions;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  PromotionsActionResult? get actionResult;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionManagerStateCopyWith<_$_PromotionManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}
