import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class OverlayLoader extends StatelessWidget {
  const OverlayLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Clr.of(context).neutralGrey0.withAlpha((0.2 * 255).toInt()),
      child: Center(
        child: CircularProgressIndicator(
          valueColor:
              AlwaysStoppedAnimation<Color>(Clr.of(context).neutralGrey100),
        ),
      ),
    );
  }
}

class OverlayService {
  static OverlayEntry? _loader;

  static void showLoader(BuildContext context) {
    if (_loader == null) {
      _loader = OverlayEntry(
        builder: (_) => const OverlayLoader(),
      );
      Overlay.of(context).insert(_loader!);
    }
  }

  static void hideLoader() {
    _loader?.remove();
    _loader = null;
  }
}
