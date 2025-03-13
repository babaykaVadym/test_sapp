import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/core/error/app_exception.dart';
import 'package:flutter_app_scarb/core/error/error_handler_util.dart';

class DateTimeUtils {
  static String? dateTimeToDateString(DateTime? date) {
    if (date == null) {
      return null;
    }

    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  static String? dateTimeToDateStringWithoutDay(DateTime? date) {
    if (date == null) {
      return null;
    }
    final formatter = DateFormat('yyyy-MM');
    return formatter.format(date);
  }

  static DateTime? dateStringToDateTime(
    String? date,
  ) {
    final formatter = DateFormat('yyyy-MM-dd');
    if (date?.isEmpty == true) {
      return null;
    }

    return formatter.tryParse(
      date ?? '',
    );
  }

  static DateTime? stringToDateTimeJSNull(String? dateTime,
      {bool useUts = false}) {
    if (dateTime == null || dateTime.isEmpty) {
      return null;
    }

    try {
      late DateFormat formatter;

      if (dateTime.contains('T')) {
        formatter = DateFormat('yyyy-MM-ddTHH:mm:ss');
      } else {
        formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
      }

      final convert = formatter.parse(dateTime, useUts);

      return convert;
    } catch (error, stackTrace) {
      ErrorHandler.catchError(error, stackTrace,
          appException: AppException(
              error: error,
              stackTrace: stackTrace,
              where: '[DateTimeUtils] stringToDateTimeJSNull $dateTime'));

      return null;
    }
  }
}
