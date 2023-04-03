import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../gen/assets.gen.dart';

class GoToButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool showDivider;
  final EdgeInsets margin;
  final EdgeInsets padding;
  const GoToButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.showDivider = false,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(4),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onPressed,
            child: Padding(
              padding: padding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      AutoSizeText(
                        title,
                        style:
                            Theme.of(context).textTheme.labelMedium!.copyWith(
                                  fontSize: 22,
                                ),
                        maxFontSize: 22,
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        Assets.images.arrowForward.path,
                        height: 32,
                        color: Theme.of(
                          context,
                        ).colorScheme.onPrimary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  showDivider
                      ? Divider(
                          color: Theme.of(context).colorScheme.onPrimary,
                          thickness: 2,
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
