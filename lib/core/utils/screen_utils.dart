import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/utils/overley_loader.dart';

mixin ScreenUtils {
  Future<void> handleProgress(bool enable, BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (enable) {
        OverlayService.showLoader(context);
      } else {
        OverlayService.hideLoader();
      }
    });
  }
}
