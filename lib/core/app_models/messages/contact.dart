import 'package:freezed_annotation/freezed_annotation.dart';
import '../user_models/user_restricted_model.dart';

import 'message.dart';
part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required String chatId,
    required UserRestrictedModel contactData,
    required Message? lastMessage,
    required int? messageCount,
  }) = _Contact;

  factory Contact.fromJson(Map<String, Object?> json) =>
      _$ContactFromJson(json);
}
