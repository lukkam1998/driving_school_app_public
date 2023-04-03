// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_restricted_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRestrictedModel _$UserRestrictedModelFromJson(Map<String, dynamic> json) {
  return _UserRestrictedModel.fromJson(json);
}

/// @nodoc
mixin _$UserRestrictedModel {
  String get userId => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String>? get chats => throw _privateConstructorUsedError;
  String? get userRole => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRestrictedModelCopyWith<UserRestrictedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRestrictedModelCopyWith<$Res> {
  factory $UserRestrictedModelCopyWith(
          UserRestrictedModel value, $Res Function(UserRestrictedModel) then) =
      _$UserRestrictedModelCopyWithImpl<$Res, UserRestrictedModel>;
  @useResult
  $Res call(
      {String userId,
      String email,
      List<String>? chats,
      String? userRole,
      String? imagePath,
      String? name,
      String? surname});
}

/// @nodoc
class _$UserRestrictedModelCopyWithImpl<$Res, $Val extends UserRestrictedModel>
    implements $UserRestrictedModelCopyWith<$Res> {
  _$UserRestrictedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? chats = freezed,
    Object? userRole = freezed,
    Object? imagePath = freezed,
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
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_UserRestrictedModelCopyWith<$Res>
    implements $UserRestrictedModelCopyWith<$Res> {
  factory _$$_UserRestrictedModelCopyWith(_$_UserRestrictedModel value,
          $Res Function(_$_UserRestrictedModel) then) =
      __$$_UserRestrictedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String email,
      List<String>? chats,
      String? userRole,
      String? imagePath,
      String? name,
      String? surname});
}

/// @nodoc
class __$$_UserRestrictedModelCopyWithImpl<$Res>
    extends _$UserRestrictedModelCopyWithImpl<$Res, _$_UserRestrictedModel>
    implements _$$_UserRestrictedModelCopyWith<$Res> {
  __$$_UserRestrictedModelCopyWithImpl(_$_UserRestrictedModel _value,
      $Res Function(_$_UserRestrictedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? email = null,
    Object? chats = freezed,
    Object? userRole = freezed,
    Object? imagePath = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$_UserRestrictedModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      chats: freezed == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userRole: freezed == userRole
          ? _value.userRole
          : userRole // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_UserRestrictedModel implements _UserRestrictedModel {
  const _$_UserRestrictedModel(
      {required this.userId,
      required this.email,
      final List<String>? chats,
      this.userRole,
      this.imagePath,
      this.name,
      this.surname})
      : _chats = chats;

  factory _$_UserRestrictedModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserRestrictedModelFromJson(json);

  @override
  final String userId;
  @override
  final String email;
  final List<String>? _chats;
  @override
  List<String>? get chats {
    final value = _chats;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userRole;
  @override
  final String? imagePath;
  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'UserRestrictedModel(userId: $userId, email: $email, chats: $chats, userRole: $userRole, imagePath: $imagePath, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRestrictedModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.userRole, userRole) ||
                other.userRole == userRole) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      email,
      const DeepCollectionEquality().hash(_chats),
      userRole,
      imagePath,
      name,
      surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRestrictedModelCopyWith<_$_UserRestrictedModel> get copyWith =>
      __$$_UserRestrictedModelCopyWithImpl<_$_UserRestrictedModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRestrictedModelToJson(
      this,
    );
  }
}

abstract class _UserRestrictedModel implements UserRestrictedModel {
  const factory _UserRestrictedModel(
      {required final String userId,
      required final String email,
      final List<String>? chats,
      final String? userRole,
      final String? imagePath,
      final String? name,
      final String? surname}) = _$_UserRestrictedModel;

  factory _UserRestrictedModel.fromJson(Map<String, dynamic> json) =
      _$_UserRestrictedModel.fromJson;

  @override
  String get userId;
  @override
  String get email;
  @override
  List<String>? get chats;
  @override
  String? get userRole;
  @override
  String? get imagePath;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  @JsonKey(ignore: true)
  _$$_UserRestrictedModelCopyWith<_$_UserRestrictedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
