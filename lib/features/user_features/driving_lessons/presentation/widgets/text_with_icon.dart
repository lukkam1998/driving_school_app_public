import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
