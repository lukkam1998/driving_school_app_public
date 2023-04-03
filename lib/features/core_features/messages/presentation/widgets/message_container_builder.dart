import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../../../core/services/user_data_service/user_data_service_cubit/user_data_service_cubit.dart';

import '../../../../../core/app_models/messages/message.dart';

final DateFormat timeFormatter = DateFormat('hh:mm dd.MM.yyyy');

class MessageContainerBuilder extends StatefulWidget {
  final Message message;
  const MessageContainerBuilder({
    required this.message,
    required super.key,
  });

  @override
  State<MessageContainerBuilder> createState() =>
      _MessageContainerBuilderState();
}

class _MessageContainerBuilderState extends State<MessageContainerBuilder> {
  final ValueNotifier<bool> isDateShowed = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDataServiceCubit, UserDataServiceState>(
      builder: (context, state) {
        if (state.isLoading || state.userData == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        const cornerRadius = Radius.circular(12);
        final colorScheme = Theme.of(context).colorScheme;
        final textTheme = Theme.of(context).textTheme;
        final userId = state.userData!.userId;
        final containerColor = userId == widget.message.senderId
            ? colorScheme.onPrimary
            : colorScheme.primary;
        final textColor = userId == widget.message.senderId
            ? colorScheme.secondary
            : colorScheme.secondary;
        final messageAligment = userId == widget.message.senderId
            ? MainAxisAlignment.end
            : MainAxisAlignment.start;
        final containerBorder = userId == widget.message.senderId
            ? const BorderRadius.only(
                bottomLeft: cornerRadius,
                topLeft: cornerRadius,
                topRight: cornerRadius,
              )
            : const BorderRadius.only(
                bottomRight: cornerRadius,
                topLeft: cornerRadius,
                topRight: cornerRadius,
              );

        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 2,
          ),
          child: Row(
            mainAxisAlignment: messageAligment,
            children: [
              Column(
                crossAxisAlignment: userId == widget.message.senderId
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  ValueListenableBuilder(
                    valueListenable: isDateShowed,
                    builder: (context, value, child) {
                      return value
                          ? Text(
                              timeFormatter
                                  .format(widget.message.timestamp.toDate()),
                              style: textTheme.labelSmall?.copyWith(
                                fontSize: 8,
                                color: colorScheme.secondary.withOpacity(0.6),
                              ),
                            )
                          : const SizedBox();
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      isDateShowed.value = !isDateShowed.value;
                    },
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 3 / 5),
                      decoration: BoxDecoration(
                        borderRadius: containerBorder,
                        color: containerColor,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              widget.message.messageBody,
                              style: textTheme.headlineMedium?.copyWith(
                                color: textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
