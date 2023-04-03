import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String userId,
    required String email,
    required String userRole,
    List<String>? chats,
    bool? isAuthorized,
    bool? firstLogin,
    String? imagePath,
    DateTime? birthDate,
    String? name,
    String? surname,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
