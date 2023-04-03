import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final double? padding;
  final bool isCircular;
  const AppShimmer({
    super.key,
    required this.height,
    required this.width,
    this.borderRadius,
    this.padding,
    this.isCircular = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.primary,
        highlightColor:
            Theme.of(context).colorScheme.onBackground.withOpacity(1),
        child: Container(
          decoration: BoxDecoration(
            borderRadius:
                isCircular ? null : BorderRadius.circular(borderRadius ?? 0),
            color: Colors.grey.shade300,
            shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
          ),
          height: height,
          width: width,
        ),
      ),
    );
  }
}
