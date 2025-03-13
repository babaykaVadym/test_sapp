import 'package:flutter/material.dart';

class ContentScrollBuilder extends StatelessWidget {
  const ContentScrollBuilder({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: child,
          ),
        ),
      );
    }));
  }
}
