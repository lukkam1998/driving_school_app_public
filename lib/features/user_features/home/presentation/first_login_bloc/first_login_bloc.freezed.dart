// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'first_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirstLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(
            String name, String surname, DateTime userBirthDate)
        updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(String name, String surname, DateTime userBirthDate)?
        updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(String name, String surname, DateTime userBirthDate)?
        updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickPhotoEvent value) addPhoto,
    required TResult Function(UpdateUserDataEvent value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickPhotoEvent value)? addPhoto,
    TResult? Function(UpdateUserDataEvent value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickPhotoEvent value)? addPhoto,
    TResult Function(UpdateUserDataEvent value)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstLoginEventCopyWith<$Res> {
  factory $FirstLoginEventCopyWith(
          FirstLoginEvent value, $Res Function(FirstLoginEvent) then) =
      _$FirstLoginEventCopyWithImpl<$Res, FirstLoginEvent>;
}

/// @nodoc
class _$FirstLoginEventCopyWithImpl<$Res, $Val extends FirstLoginEvent>
    implements $FirstLoginEventCopyWith<$Res> {
  _$FirstLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickPhotoEventCopyWith<$Res> {
  factory _$$PickPhotoEventCopyWith(
          _$PickPhotoEvent value, $Res Function(_$PickPhotoEvent) then) =
      __$$PickPhotoEventCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$PickPhotoEventCopyWithImpl<$Res>
    extends _$FirstLoginEventCopyWithImpl<$Res, _$PickPhotoEvent>
    implements _$$PickPhotoEventCopyWith<$Res> {
  __$$PickPhotoEventCopyWithImpl(
      _$PickPhotoEvent _value, $Res Function(_$PickPhotoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$PickPhotoEvent(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PickPhotoEvent implements PickPhotoEvent {
  const _$PickPhotoEvent(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'FirstLoginEvent.addPhoto(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickPhotoEvent &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PickPhotoEventCopyWith<_$PickPhotoEvent> get copyWith =>
      __$$PickPhotoEventCopyWithImpl<_$PickPhotoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(
            String name, String surname, DateTime userBirthDate)
        updateUser,
  }) {
    return addPhoto(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(String name, String surname, DateTime userBirthDate)?
        updateUser,
  }) {
    return addPhoto?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(String name, String surname, DateTime userBirthDate)?
        updateUser,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickPhotoEvent value) addPhoto,
    required TResult Function(UpdateUserDataEvent value) updateUser,
  }) {
    return addPhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickPhotoEvent value)? addPhoto,
    TResult? Function(UpdateUserDataEvent value)? updateUser,
  }) {
    return addPhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickPhotoEvent value)? addPhoto,
    TResult Function(UpdateUserDataEvent value)? updateUser,
    required TResult orElse(),
  }) {
    if (addPhoto != null) {
      return addPhoto(this);
    }
    return orElse();
  }
}

abstract class PickPhotoEvent implements FirstLoginEvent {
  const factory PickPhotoEvent(final File file) = _$PickPhotoEvent;

  File get file;
  @JsonKey(ignore: true)
  _$$PickPhotoEventCopyWith<_$PickPhotoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserDataEventCopyWith<$Res> {
  factory _$$UpdateUserDataEventCopyWith(_$UpdateUserDataEvent value,
          $Res Function(_$UpdateUserDataEvent) then) =
      __$$UpdateUserDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String surname, DateTime userBirthDate});
}

/// @nodoc
class __$$UpdateUserDataEventCopyWithImpl<$Res>
    extends _$FirstLoginEventCopyWithImpl<$Res, _$UpdateUserDataEvent>
    implements _$$UpdateUserDataEventCopyWith<$Res> {
  __$$UpdateUserDataEventCopyWithImpl(
      _$UpdateUserDataEvent _value, $Res Function(_$UpdateUserDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? surname = null,
    Object? userBirthDate = null,
  }) {
    return _then(_$UpdateUserDataEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      userBirthDate: null == userBirthDate
          ? _value.userBirthDate
          : userBirthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateUserDataEvent implements UpdateUserDataEvent {
  const _$UpdateUserDataEvent(
      {required this.name, required this.surname, required this.userBirthDate});

  @override
  final String name;
  @override
  final String surname;
  @override
  final DateTime userBirthDate;

  @override
  String toString() {
    return 'FirstLoginEvent.updateUser(name: $name, surname: $surname, userBirthDate: $userBirthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDataEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.userBirthDate, userBirthDate) ||
                other.userBirthDate == userBirthDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, surname, userBirthDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDataEventCopyWith<_$UpdateUserDataEvent> get copyWith =>
      __$$UpdateUserDataEventCopyWithImpl<_$UpdateUserDataEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) addPhoto,
    required TResult Function(
            String name, String surname, DateTime userBirthDate)
        updateUser,
  }) {
    return updateUser(name, surname, userBirthDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? addPhoto,
    TResult? Function(String name, String surname, DateTime userBirthDate)?
        updateUser,
  }) {
    return updateUser?.call(name, surname, userBirthDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? addPhoto,
    TResult Function(String name, String surname, DateTime userBirthDate)?
        updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(name, surname, userBirthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickPhotoEvent value) addPhoto,
    required TResult Function(UpdateUserDataEvent value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickPhotoEvent value)? addPhoto,
    TResult? Function(UpdateUserDataEvent value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickPhotoEvent value)? addPhoto,
    TResult Function(UpdateUserDataEvent value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUserDataEvent implements FirstLoginEvent {
  const factory UpdateUserDataEvent(
      {required final String name,
      required final String surname,
      required final DateTime userBirthDate}) = _$UpdateUserDataEvent;

  String get name;
  String get surname;
  DateTime get userBirthDate;
  @JsonKey(ignore: true)
  _$$UpdateUserDataEventCopyWith<_$UpdateUserDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirstLoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserModel get userModel => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;
  File? get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstLoginStateCopyWith<FirstLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstLoginStateCopyWith<$Res> {
  factory $FirstLoginStateCopyWith(
          FirstLoginState value, $Res Function(FirstLoginState) then) =
      _$FirstLoginStateCopyWithImpl<$Res, FirstLoginState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserModel userModel,
      bool hasError,
      bool isUpdated,
      File? photo});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$FirstLoginStateCopyWithImpl<$Res, $Val extends FirstLoginState>
    implements $FirstLoginStateCopyWith<$Res> {
  _$FirstLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userModel = null,
    Object? hasError = null,
    Object? isUpdated = null,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FirstLoginStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserModel userModel,
      bool hasError,
      bool isUpdated,
      File? photo});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FirstLoginStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userModel = null,
    Object? hasError = null,
    Object? isUpdated = null,
    Object? photo = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdated: null == isUpdated
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      required this.userModel,
      required this.hasError,
      required this.isUpdated,
      this.photo});

  @override
  final bool isLoading;
  @override
  final UserModel userModel;
  @override
  final bool hasError;
  @override
  final bool isUpdated;
  @override
  final File? photo;

  @override
  String toString() {
    return 'FirstLoginState(isLoading: $isLoading, userModel: $userModel, hasError: $hasError, isUpdated: $isUpdated, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, userModel, hasError, isUpdated, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements FirstLoginState {
  const factory _Initial(
      {required final bool isLoading,
      required final UserModel userModel,
      required final bool hasError,
      required final bool isUpdated,
      final File? photo}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  UserModel get userModel;
  @override
  bool get hasError;
  @override
  bool get isUpdated;
  @override
  File? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
