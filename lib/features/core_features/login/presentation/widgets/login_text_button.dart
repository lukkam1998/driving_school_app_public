import 'package:flutter/material.dart';

class LoginTextButton extends StatelessWidget {
  final String title;
  final String eventTitle;
  final VoidCallback onPressed;

  const LoginTextButton({
    required this.title,
    required this.eventTitle,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateColor.resolveWith(
          (states) => Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      onPressed: onPressed,
      child: RichText(
        text: TextSpan(
            text: title,
            style: Theme.of(context).textTheme.headlineMedium,
            children: [
              TextSpan(
                text: eventTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.blue.withOpacity(0.5),
                      decoration: TextDecoration.underline,
                    ),
              ),
            ]),
      ),
    );
  }
}
