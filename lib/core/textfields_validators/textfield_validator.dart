import 'package:injectable/injectable.dart';
import '../../common/strings/strings.dart';

@lazySingleton
class TextFieldValidator {
  String? validateNotEmptyString(String? value) {
    if (value!.isEmpty) {
      return strings.empty_string_value;
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return strings.empty_string_value;
    }
    return null;
  }

  String? validateName(String? value) {
    if (value!.isEmpty) {
      return strings.empty_string_value;
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return strings.empty_string_value;
    }
    return null;
  }

  String? validateRepeatedPassword(
    String? value,
    String? secondValue,
  ) {
    if (value!.isEmpty) {
      return strings.empty_string_value;
    }

    if (value != secondValue) {
      return strings.wrong_repeated_password;
    }
    return null;
  }

  String? validateNumber(String? value) {
    if (value!.isEmpty) {
      return strings.empty_string_value;
    }
    final result = double.tryParse(value);
    if (result == null) {
      return strings.provide_valid_number;
    }
    return null;
  }
}
