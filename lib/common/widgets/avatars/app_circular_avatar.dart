import 'package:flutter/material.dart';

import '../app_image_loader/app_image_loader.dart';

class AppCircularAvatar extends StatelessWidget {
  final String? imagePath;
  final double? size;
  const AppCircularAvatar({
    Key? key,
    this.imagePath,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 80,
      width: size ?? 80,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: imagePath == null
          ? const Icon(
              Icons.person,
              size: 40,
            )
          : AppImageLoader(
              imageUrl: imagePath!,
            ),
    );
  }
}
