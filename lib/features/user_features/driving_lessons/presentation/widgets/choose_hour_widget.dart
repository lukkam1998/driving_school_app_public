import 'package:flutter/material.dart';

class ChooseHoursWidget extends StatelessWidget {
  const ChooseHoursWidget({
    Key? key,
    required this.valueNotifier,
    required this.title,
    required this.incrementFunction,
    required this.decrementFunction,
  }) : super(key: key);

  final String title;
  final ValueNotifier<int> valueNotifier;
  final VoidCallback incrementFunction;
  final VoidCallback decrementFunction;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          title,
          style: textTheme.headlineSmall,
        ),
        const SizedBox(height: 16),
        Material(

          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                splashRadius: 16,
                icon: const Icon(Icons.remove),
                onPressed: decrementFunction,
              ),
              const SizedBox(width: 8),
              ValueListenableBuilder(
                valueListenable: valueNotifier,
                builder: (context, value, child) => Text(
                  '$value:00',
                  style: textTheme.headlineSmall,
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                splashRadius: 16,
                icon: const Icon(Icons.add),
                onPressed: incrementFunction,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
