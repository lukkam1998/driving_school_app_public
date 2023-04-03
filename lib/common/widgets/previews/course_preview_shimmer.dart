import 'package:flutter/material.dart';

import '../shimmer/app_shimmer.dart';

class CoursePreviewShimmer extends StatelessWidget {
  const CoursePreviewShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: AppShimmer(
        height: MediaQuery.of(context).size.height * (1 / 4) + 20,
        width: double.infinity,
      ),
    );
  }
}
