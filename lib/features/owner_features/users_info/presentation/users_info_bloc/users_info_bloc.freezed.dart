// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersInfoEvent {
  bool get isInstructorsPreview => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInstructorsPreview) getUsersInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInstructorsPreview)? getUsersInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInstructorsPreview)? getUsersInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersInfoEvent value) getUsersInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersInfoEvent value)? getUsersInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersInfoEvent value)? getUsersInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersInfoEventCopyWith<UsersInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersInfoEventCopyWith<$Res> {
  factory $UsersInfoEventCopyWith(
          UsersInfoEvent value, $Res Function(UsersInfoEvent) then) =
      _$UsersInfoEventCopyWithImpl<$Res, UsersInfoEvent>;
  @useResult
  $Res call({bool isInstructorsPreview});
}

/// @nodoc
class _$UsersInfoEventCopyWithImpl<$Res, $Val extends UsersInfoEvent>
    implements $UsersInfoEventCopyWith<$Res> {
  _$UsersInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInstructorsPreview = null,
  }) {
    return _then(_value.copyWith(
      isInstructorsPreview: null == isInstructorsPreview
          ? _value.isInstructorsPreview
          : isInstructorsPreview // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUsersInfoEventCopyWith<$Res>
    implements $UsersInfoEventCopyWith<$Res> {
  factory _$$GetUsersInfoEventCopyWith(
          _$GetUsersInfoEvent value, $Res Function(_$GetUsersInfoEvent) then) =
      __$$GetUsersInfoEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isInstructorsPreview});
}

/// @nodoc
class __$$GetUsersInfoEventCopyWithImpl<$Res>
    extends _$UsersInfoEventCopyWithImpl<$Res, _$GetUsersInfoEvent>
    implements _$$GetUsersInfoEventCopyWith<$Res> {
  __$$GetUsersInfoEventCopyWithImpl(
      _$GetUsersInfoEvent _value, $Res Function(_$GetUsersInfoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInstructorsPreview = null,
  }) {
    return _then(_$GetUsersInfoEvent(
      isInstructorsPreview: null == isInstructorsPreview
          ? _value.isInstructorsPreview
          : isInstructorsPreview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetUsersInfoEvent implements GetUsersInfoEvent {
  const _$GetUsersInfoEvent({required this.isInstructorsPreview});

  @override
  final bool isInstructorsPreview;

  @override
  String toString() {
    return 'UsersInfoEvent.getUsersInfo(isInstructorsPreview: $isInstructorsPreview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsersInfoEvent &&
            (identical(other.isInstructorsPreview, isInstructorsPreview) ||
                other.isInstructorsPreview == isInstructorsPreview));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInstructorsPreview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersInfoEventCopyWith<_$GetUsersInfoEvent> get copyWith =>
      __$$GetUsersInfoEventCopyWithImpl<_$GetUsersInfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInstructorsPreview) getUsersInfo,
  }) {
    return getUsersInfo(isInstructorsPreview);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInstructorsPreview)? getUsersInfo,
  }) {
    return getUsersInfo?.call(isInstructorsPreview);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInstructorsPreview)? getUsersInfo,
    required TResult orElse(),
  }) {
    if (getUsersInfo != null) {
      return getUsersInfo(isInstructorsPreview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUsersInfoEvent value) getUsersInfo,
  }) {
    return getUsersInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUsersInfoEvent value)? getUsersInfo,
  }) {
    return getUsersInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUsersInfoEvent value)? getUsersInfo,
    required TResult orElse(),
  }) {
    if (getUsersInfo != null) {
      return getUsersInfo(this);
    }
    return orElse();
  }
}

abstract class GetUsersInfoEvent implements UsersInfoEvent {
  const factory GetUsersInfoEvent({required final bool isInstructorsPreview}) =
      _$GetUsersInfoEvent;

  @override
  bool get isInstructorsPreview;
  @override
  @JsonKey(ignore: true)
  _$$GetUsersInfoEventCopyWith<_$GetUsersInfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersInfoState {
  List<UserModel> get usersInfo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersInfoStateCopyWith<UsersInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersInfoStateCopyWith<$Res> {
  factory $UsersInfoStateCopyWith(
          UsersInfoState value, $Res Function(UsersInfoState) then) =
      _$UsersInfoStateCopyWithImpl<$Res, UsersInfoState>;
  @useResult
  $Res call({List<UserModel> usersInfo, bool isLoading, bool hasError});
}

/// @nodoc
class _$UsersInfoStateCopyWithImpl<$Res, $Val extends UsersInfoState>
    implements $UsersInfoStateCopyWith<$Res> {
  _$UsersInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersInfo = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      usersInfo: null == usersInfo
          ? _value.usersInfo
          : usersInfo // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $UsersInfoStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserModel> usersInfo, bool isLoading, bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UsersInfoStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersInfo = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      usersInfo: null == usersInfo
          ? _value._usersInfo
          : usersInfo // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<UserModel> usersInfo,
      required this.isLoading,
      required this.hasError})
      : _usersInfo = usersInfo;

  final List<UserModel> _usersInfo;
  @override
  List<UserModel> get usersInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersInfo);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'UsersInfoState(usersInfo: $usersInfo, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._usersInfo, _usersInfo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_usersInfo), isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements UsersInfoState {
  const factory _Initial(
      {required final List<UserModel> usersInfo,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  List<UserModel> get usersInfo;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
