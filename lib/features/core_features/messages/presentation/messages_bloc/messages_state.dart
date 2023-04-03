part of 'messages_bloc.dart';

@freezed
class MessagesState with _$MessagesState {
  const factory MessagesState({
    required bool isLoading,
    required bool hasError,
    required Stream<QuerySnapshot<Map<String, dynamic>>>? chatStream,
  }) = _Initial;

  factory MessagesState.initial() => const MessagesState(
        isLoading: false,
        hasError: false,
        chatStream: null,
      );
}
