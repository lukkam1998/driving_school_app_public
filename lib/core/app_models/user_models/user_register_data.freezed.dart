// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterData _$UserRegisterDataFromJson(Map<String, dynamic> json) {
  return _UserRegisterData.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterData {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterDataCopyWith<UserRegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterDataCopyWith<$Res> {
  factory $UserRegisterDataCopyWith(
          UserRegisterData value, $Res Function(UserRegisterData) then) =
      _$UserRegisterDataCopyWithImpl<$Res, UserRegisterData>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$UserRegisterDataCopyWithImpl<$Res, $Val extends UserRegisterData>
    implements $UserRegisterDataCopyWith<$Res> {
  _$UserRegisterDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserRegisterDataCopyWith<$Res>
    implements $UserRegisterDataCopyWith<$Res> {
  factory _$$_UserRegisterDataCopyWith(
          _$_UserRegisterData value, $Res Function(_$_UserRegisterData) then) =
      __$$_UserRegisterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$_UserRegisterDataCopyWithImpl<$Res>
    extends _$UserRegisterDataCopyWithImpl<$Res, _$_UserRegisterData>
    implements _$$_UserRegisterDataCopyWith<$Res> {
  __$$_UserRegisterDataCopyWithImpl(
      _$_UserRegisterData _value, $Res Function(_$_UserRegisterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$_UserRegisterData(
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
class _$_UserRegisterData implements _UserRegisterData {
  const _$_UserRegisterData({required this.login, required this.password});

  factory _$_UserRegisterData.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegisterDataFromJson(json);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'UserRegisterData(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegisterData &&
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
  _$$_UserRegisterDataCopyWith<_$_UserRegisterData> get copyWith =>
      __$$_UserRegisterDataCopyWithImpl<_$_UserRegisterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegisterDataToJson(
      this,
    );
  }
}

abstract class _UserRegisterData implements UserRegisterData {
  const factory _UserRegisterData(
      {required final String login,
      required final String password}) = _$_UserRegisterData;

  factory _UserRegisterData.fromJson(Map<String, dynamic> json) =
      _$_UserRegisterData.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegisterDataCopyWith<_$_UserRegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}
