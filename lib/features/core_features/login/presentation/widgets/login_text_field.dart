import 'package:flutter/material.dart';

import '../../../../../gen/colors.gen.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final TextInputAction textInputAction;
  bool obscureText;
  LoginTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.validator,
    required this.textInputAction,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide.none,
    );
    return TextFormField(
      textInputAction: textInputAction,
      validator: validator,
      controller: controller,
      cursorColor: Colors.black,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: ColorName.secondary.withOpacity(0.5),
            ),
        errorBorder: outlineInputBorder,
        filled: true,
        fillColor: theme.colorScheme.onPrimary.withOpacity(0.2),
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
      ),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
