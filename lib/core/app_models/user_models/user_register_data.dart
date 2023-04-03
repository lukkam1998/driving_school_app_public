import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_data.freezed.dart';
part 'user_register_data.g.dart';

@freezed
class UserRegisterData with _$UserRegisterData {
  const factory UserRegisterData({
    required String login,
    required String password,
  }) = _UserRegisterData;

  factory UserRegisterData.fromJson(Map<String, Object?> json) =>
      _$UserRegisterDataFromJson(json);
}
