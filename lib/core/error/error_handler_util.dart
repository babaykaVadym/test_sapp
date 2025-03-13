import 'dart:developer';

import 'package:flutter_app_scarb/core/error/app_exception.dart';
import 'package:flutter_app_scarb/core/network/error_model.dart';

class ErrorHandler {
  static Future<void> catchError(
    Object error,
    StackTrace? stackTrace, {
    AppException? appException,
  }) async {
    String? errorText;

    if (error is ErrorModel) {
      errorText = (error).message;
    }

    log("\x1B[31m errorApp: ${errorText ?? error.toString()} \x1B[0m");
    log("\x1B[36m appException: ${appException?.where} \x1B[0m");
    log("\x1B[33m stackTrace: $stackTrace \x1B[0m");

    await sendToCrashlytic(error,
        appException: appException, stackTrace: stackTrace);
  }

  static sendToCrashlytic(
    Object error, {
    StackTrace? stackTrace,
    AppException? appException,
  }) async {
    //TODO add send error handler to Crashlytic if use Firebase
  }

  static sendToSentry(
    Object error, {
    StackTrace? stackTrace,
    AppException? appException,
  }) async {
    //TODO add send error handler to Sentry
  }
}
