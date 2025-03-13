import 'package:flutter/material.dart';

class ContentConstrainWidget extends StatelessWidget {
  final Widget child;

  const ContentConstrainWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 380,
        ),
        child: child,
      ),
    );
  }
}
