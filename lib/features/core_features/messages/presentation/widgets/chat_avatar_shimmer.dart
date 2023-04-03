import 'package:flutter/material.dart';

import '../../../../../common/widgets/shimmer/app_shimmer.dart';

class ChatAvatarShimmer extends StatelessWidget {
  const ChatAvatarShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          const AppShimmer(
            isCircular: true,
            height: 62,
            width: 62,
          ),
          const SizedBox(width: 8),
          const AppShimmer(
            height: 60,
            borderRadius: 10,
            width: 280,
          ),
        ],
      ),
    );
  }
}
