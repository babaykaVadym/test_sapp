import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:widgets_library/core/styles/colors.dart';

class CustomToast {
  final FToast fToast = FToast();

  void showCustomToast({
    required BuildContext context,
    required Widget bodyWidget,
  }) {
    fToast.init(context);

    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Clr.of(context).neutralGrey80,
          border: Border.all(
            width: 2,
            color: Clr.of(context).neutralGrey20,
          )),
      child: bodyWidget,
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 3),
    );
  }
}
