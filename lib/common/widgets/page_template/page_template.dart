import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  final Widget body;
  const PageTemplate({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            clipBehavior: Clip.hardEdge,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onSurface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: body,
          ),
        ),
      ],
    );
  }
}
