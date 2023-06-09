part of 'messages_bloc.dart';

@freezed
class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.connectWithChat(String chatId) =
      ConnectWithChatEvent;
  const factory MessagesEvent.sendMessage(
    String message,
    String chatId,
  ) = SendMessageEvent;
}
