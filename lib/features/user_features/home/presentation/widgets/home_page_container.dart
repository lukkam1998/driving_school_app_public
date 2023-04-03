import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageContainer extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback? onPressed;
  const HomePageContainer({
    required this.text,
    required this.imagePath,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: theme.colorScheme.primary,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -40,
              right: 20,
              child: SvgPicture.asset(
                imagePath,
                height: 170,
                width: 170,
                color: theme.colorScheme.onPrimary,
                alignment: Alignment.centerRight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AutoSizeText(
                    text,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 24,
                        ),
                    maxFontSize: 22,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
