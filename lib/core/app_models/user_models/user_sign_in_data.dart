import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_data.freezed.dart';
part 'user_sign_in_data.g.dart';

@freezed
class UserSignInData with _$UserSignInData {
  const factory UserSignInData({
    required String login,
    required String password,
  }) = _UserSignInData;

  factory UserSignInData.fromJson(Map<String, Object?> json) =>
      _$UserSignInDataFromJson(json);
}
