import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:form_validator/form_validator.dart';

class ValidationUtils {
  static String? validateEmail(String? email) {
    final validator = ValidationBuilder()
        .email(LocaleKeys.registration_invalidEmail.tr())
        .build();
    return email?.isEmpty ?? true
        ? LocaleKeys.registration_thisFieldIsRequired.tr()
        : validator(email);
  }

  static String? validatePassword(String? password) {
    if (password?.isEmpty == true) {
      return LocaleKeys.registration_thisFieldIsRequired.tr();
    }

    final validator = ValidationBuilder()
        .required(LocaleKeys.registration_thisFieldIsRequired.tr())
        .minLength(
            8,
            LocaleKeys.registration_passwordMinLength
                .tr(namedArgs: {'length': '8'}))
        .maxLength(
            32,
            LocaleKeys.registration_passwordMaxLength
                .tr(namedArgs: {'length': '32'}))
        .build();

    return validator(password);
  }

  static String? validateInviteLink(String? inviteLink) {
    return inviteLink?.isEmpty ?? true
        ? LocaleKeys.registration_thisFieldIsRequired.tr()
        : null;
  }

  static String? validateText(String? text) {
    return text?.isEmpty ?? true
        ? LocaleKeys.registration_thisFieldIsRequired.tr()
        : null;
  }

  static String? validateConfirmPassword(
      String? password, String? confirmPassword) {
    if (password == null ||
        password.isEmpty ||
        confirmPassword == null ||
        confirmPassword.isEmpty) {
      return LocaleKeys.registration_thisFieldIsRequired.tr();
    }
    if (password != confirmPassword) {
      return LocaleKeys.registration_passwordsDoNotMatch.tr();
    }
    return null;
  }
}
