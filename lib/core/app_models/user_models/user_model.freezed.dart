// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get userRole => throw _privateConstructorUsedError;
  List<String>? get chats => throw _privateConstructorUsedError;
  bool? get isAuthorized => throw _privateConstructorUsedError;
  bool? get firstLogin => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String userId,
      String email,
      String userRole,
      List<String>? chats,
      bool? isAuthorized,
      bool? firstLogin,
      String? imagePath,
      DateTime? birthDate,
      String? name,
      String? surname});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? userRole = null,
    Object? chats = freezed,
    Object? isAuthorized = freezed,
    Object? firstLogin = freezed,
    Object? imagePath = freezed,
    Object? birthDate = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAuthorized: freezed == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstLogin: freezed == firstLogin
          ? _value.firstLogin
          : firstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String email,
      String userRole,
      List<String>? chats,
      bool? isAuthorized,
      bool? firstLogin,
      String? imagePath,
      DateTime? birthDate,
      String? name,
      String? surname});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? userRole = null,
    Object? chats = freezed,
    Object? isAuthorized = freezed,
    Object? firstLogin = freezed,
    Object? imagePath = freezed,
    Object? birthDate = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$_UserModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userRole: null == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String,
      chats: freezed == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isAuthorized: freezed == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstLogin: freezed == firstLogin
          ? _value.firstLogin
          : firstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {required this.userId,
      required this.email,
      required this.userRole,
      final List<String>? chats,
      this.isAuthorized,
      this.firstLogin,
      this.imagePath,
      this.birthDate,
      this.name,
      this.surname})
      : _chats = chats;

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String userId;
  @override
  final String email;
  @override
  final String userRole;
  final List<String>? _chats;
  @override
  List<String>? get chats {
    final value = _chats;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isAuthorized;
  @override
  final bool? firstLogin;
  @override
  final String? imagePath;
  @override
  final DateTime? birthDate;
  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'UserModel(userId: $userId, email: $email, userRole: $userRole, chats: $chats, isAuthorized: $isAuthorized, firstLogin: $firstLogin, imagePath: $imagePath, birthDate: $birthDate, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized) &&
            (identical(other.firstLogin, firstLogin) ||
                other.firstLogin == firstLogin) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      userRole,
      const DeepCollectionEquality().hash(_chats),
      isAuthorized,
      firstLogin,
      imagePath,
      birthDate,
      name,
      surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String userId,
      required final String email,
      required final String userRole,
      final List<String>? chats,
      final bool? isAuthorized,
      final bool? firstLogin,
      final String? imagePath,
      final DateTime? birthDate,
      final String? name,
      final String? surname}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get userId;
  @override
  String get email;
  @override
  String get userRole;
  @override
  List<String>? get chats;
  @override
  bool? get isAuthorized;
  @override
  bool? get firstLogin;
  @override
  String? get imagePath;
  @override
  DateTime? get birthDate;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
