import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../gen/colors.gen.dart';

class MainAppTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextInputAction textInputAction;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatters;
  final Color? fillColor;
  final bool? isObscure;
  final bool? isHintVisibleOnBorder;
  final int? maxLines;

  const MainAppTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.textInputAction,
    this.textInputType,
    this.textInputFormatters,
    this.fillColor,
    this.isObscure,
    this.isHintVisibleOnBorder,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    );
    return TextFormField(
      maxLines: maxLines ?? 1,
      obscureText: isObscure ?? false,
      inputFormatters: textInputFormatters,
      textInputAction: textInputAction,
      validator: validator,
      keyboardType: textInputType,
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: isHintVisibleOnBorder == null
            ? null
            : isHintVisibleOnBorder!
                ? hintText
                : null,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: ColorName.secondary.withOpacity(0.5),
            ),
        errorBorder: outlineInputBorder,
        filled: true,
        fillColor: fillColor ?? theme.colorScheme.secondary.withOpacity(0.2),
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        
      ),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
