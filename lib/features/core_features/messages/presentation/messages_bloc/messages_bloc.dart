import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/connect_with_chat_usecase.dart';
import '../../domain/usecases/send_message_usecase.dart';

part 'messages_bloc.freezed.dart';
part 'messages_event.dart';
part 'messages_state.dart';

@injectable
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  final ConnectWithChatUsecase _connectWithChatUsecase;
  final SendMessageUsecase _sendMessageUsecase;
  MessagesBloc(
    this._connectWithChatUsecase,
    this._sendMessageUsecase,
  ) : super(MessagesState.initial()) {
    on<ConnectWithChatEvent>(connectWithChat);
    on<SendMessageEvent>(sendMessage);
  }

  void connectWithChat(
    ConnectWithChatEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = _connectWithChatUsecase(event.chatId);
    result.fold(
      (failure) => emit(state.copyWith(isLoading: false, hasError: true)),
      (stream) => emit(state.copyWith(
        isLoading: false,
        hasError: false,
        chatStream: stream,
      )),
    );
  }

  void sendMessage(
    SendMessageEvent event,
    Emitter<MessagesState> emit,
  ) async {
    await _sendMessageUsecase(event.message, event.chatId);
  }
}
