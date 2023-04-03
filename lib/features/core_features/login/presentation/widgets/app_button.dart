import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isTopCornersRounded;
  final String buttonText;
  final bool isLoading;
  final double? height;
  final double? paddingValue;
  final double? textSize;
  final double? width;
  const AppButton({
    Key? key,
    required this.buttonText,
    this.onPressed,
    this.isLoading = false,
    this.isTopCornersRounded = true,
    this.height,
    this.paddingValue,
    this.textSize,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(16),
            bottomRight: const Radius.circular(16),
            topLeft: Radius.circular(isTopCornersRounded ? 16 : 0),
            topRight: Radius.circular(isTopCornersRounded ? 16 : 0),
          ),
        ),
      ),
      child: Container(
        height: height ?? 56,
        padding: EdgeInsets.symmetric(
          vertical: paddingValue ?? 16,
        ),
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isLoading
                ? const Center(
                    child: FittedBox(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Flexible(
                    child: Text(
                      buttonText,
                      style: GoogleFonts.poppins(
                        fontSize: textSize ?? 14,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
