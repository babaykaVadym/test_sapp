import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:widgets_library/core/styles/color_themes.dart';

class SystemHelper {
  static bool isShowToast = false;

  static showToast(
      {Color bgColor = DarkTheme.errorOrange40,
      Color textColor = DarkTheme.neutralGrey100,
      String? text,
      int times = 2,
      Object? e}) async {
    String? errMsg;
    if (e != null) {
      if (e is DioException) {
        if (e.response?.statusCode != null) {
          errMsg = (e).response?.data['errorMessage'] ??
              (e).response?.data['message'];
        } else {
          errMsg = 'Something went wrong. Try again later';
        }
      } else if (e is ErrorModel) {
        errMsg = e.message.toString();
      } else {
        errMsg = e.toString();
      }
    }

    if (text != null) {
      errMsg = text;
    }

    if (!isShowToast) {
      isShowToast = true;

      await Fluttertoast.showToast(
          msg: errMsg ?? "Unexpected error",
          toastLength: Toast.LENGTH_LONG,
          timeInSecForIosWeb: times,
          textColor: textColor,
          backgroundColor: bgColor,
          fontSize: 16.0);

      await Future.delayed(const Duration(milliseconds: 800));
      isShowToast = false;
    }
  }

  static showSuccessfullyToast({
    String? text,
  }) async {
    if (!isShowToast) {
      isShowToast = true;

      await Fluttertoast.showToast(
          msg: text ?? LocaleKeys.onboarding_successfully.tr(),
          toastLength: Toast.LENGTH_LONG,
          timeInSecForIosWeb: 1,
          textColor: DarkTheme.neutralGrey0,
          backgroundColor: DarkTheme.secondaryGreen40,
          fontSize: 16.0);

      await Future.delayed(const Duration(milliseconds: 800));
      isShowToast = false;
    }
  }
}
