import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../first_login_bloc/first_login_bloc.dart';

class FirstLoginAvatarPicker extends StatefulWidget {
  final String buttonText;
  FirstLoginAvatarPicker({
    required this.buttonText,
    super.key,
  });

  @override
  State<FirstLoginAvatarPicker> createState() => _FirstLoginAvatarPickerState();
}

class _FirstLoginAvatarPickerState extends State<FirstLoginAvatarPicker> {
  final ImagePicker _picker = ImagePicker();

  void _pickImage(BuildContext context) async {
    await _picker.pickImage(source: ImageSource.gallery).then(
      (value) {
        if (value == null) {
          return;
        }
        context.read<FirstLoginBloc>().add(
              PickPhotoEvent(
                File(value.path),
              ),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _pickImage(context);
      },
      child: Text(
        widget.buttonText,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
