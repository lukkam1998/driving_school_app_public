import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class MessageTextField extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback? onTap;
  const MessageTextField({
    super.key,
    required this.controller,
    this.onTap,
  });

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 2,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      child: TextFormField(
        
        onTap: () {
          Future.delayed(const Duration(milliseconds: 500)).then((value) {
            if (widget.onTap != null) {
              widget.onTap!();
            }
          });
        },
        keyboardType: TextInputType.text,
        controller: widget.controller,
        maxLines: null,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
          border: InputBorder.none,
          hintText: S.of(context).send_message,
          hintStyle: TextStyle(
            color:
                Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
