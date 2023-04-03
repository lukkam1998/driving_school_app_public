import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:managing_driving_school_app/common/widgets/shimmer/app_shimmer.dart';

class AppImageLoader extends StatelessWidget {
  final String imageUrl;
  final double? height;
  const AppImageLoader({
    super.key,
    required this.imageUrl,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: BoxFit.cover,
      imageUrl: imageUrl,
      placeholder: (context, url) => SizedBox(
        width: height,
        height: height,
        child: AppShimmer(
          width: height,
          height: height,
        ),
      ),
      errorWidget: (context, url, error) => const ColoredBox(
        color: Colors.grey,
      ),
    );
  }
}
