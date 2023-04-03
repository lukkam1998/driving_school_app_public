import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_restricted_model.freezed.dart';
part 'user_restricted_model.g.dart';

@freezed
class UserRestrictedModel with _$UserRestrictedModel {
  const factory UserRestrictedModel({
    required String userId,
    required String email,
    List<String>? chats,
    String? userRole,
    String? imagePath,
    String? name,
    String? surname,
  }) = _UserRestrictedModel;

  factory UserRestrictedModel.fromJson(Map<String, Object?> json) =>
      _$UserRestrictedModelFromJson(json);
}
