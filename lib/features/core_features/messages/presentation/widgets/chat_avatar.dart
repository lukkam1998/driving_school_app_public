import 'package:flutter/material.dart';

import '../../../../../common/widgets/app_image_loader/app_image_loader.dart';

class ChatAvatar extends StatelessWidget {
  final String? imageUrl;
  final bool isOnline;

  const ChatAvatar({
    Key? key,
    required this.imageUrl,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
          child: imageUrl == null
              ? const Center(child: Icon(Icons.person))
              : AppImageLoader(imageUrl: imageUrl!),
        ),
        // TODO: Online status in future
        // Positioned(
        //   bottom: 9,
        //   right: 9,
        //   child: Container(
        //     height: 18,
        //     width: 18,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: Theme.of(context).colorScheme.onSurface,
        //     ),
        //     child: Center(
        //       child: Container(
        //         height: 12,
        //         width: 12,
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: isOnline ? Colors.green : Colors.grey,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
