// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_sign_in_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSignInData _$UserSignInDataFromJson(Map<String, dynamic> json) {
  return _UserSignInData.fromJson(json);
}

/// @nodoc
mixin _$UserSignInData {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSignInDataCopyWith<UserSignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSignInDataCopyWith<$Res> {
  factory $UserSignInDataCopyWith(
          UserSignInData value, $Res Function(UserSignInData) then) =
      _$UserSignInDataCopyWithImpl<$Res, UserSignInData>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$UserSignInDataCopyWithImpl<$Res, $Val extends UserSignInData>
    implements $UserSignInDataCopyWith<$Res> {
  _$UserSignInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserSignInDataCopyWith<$Res>
    implements $UserSignInDataCopyWith<$Res> {
  factory _$$_UserSignInDataCopyWith(
          _$_UserSignInData value, $Res Function(_$_UserSignInData) then) =
      __$$_UserSignInDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$_UserSignInDataCopyWithImpl<$Res>
    extends _$UserSignInDataCopyWithImpl<$Res, _$_UserSignInData>
    implements _$$_UserSignInDataCopyWith<$Res> {
  __$$_UserSignInDataCopyWithImpl(
      _$_UserSignInData _value, $Res Function(_$_UserSignInData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$_UserSignInData(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSignInData implements _UserSignInData {
  const _$_UserSignInData({required this.login, required this.password});

  factory _$_UserSignInData.fromJson(Map<String, dynamic> json) =>
      _$$_UserSignInDataFromJson(json);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'UserSignInData(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSignInData &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSignInDataCopyWith<_$_UserSignInData> get copyWith =>
      __$$_UserSignInDataCopyWithImpl<_$_UserSignInData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSignInDataToJson(
      this,
    );
  }
}

abstract class _UserSignInData implements UserSignInData {
  const factory _UserSignInData(
      {required final String login,
      required final String password}) = _$_UserSignInData;

  factory _UserSignInData.fromJson(Map<String, dynamic> json) =
      _$_UserSignInData.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserSignInDataCopyWith<_$_UserSignInData> get copyWith =>
      throw _privateConstructorUsedError;
}
