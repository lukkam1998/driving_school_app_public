import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  final bool isDividerVisible;
  const DrawerItem({
    required this.title,
    required this.icon,
    this.onPressed,
    this.isDividerVisible = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          isDividerVisible
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child:
                      Divider(color: Theme.of(context).colorScheme.secondary),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
