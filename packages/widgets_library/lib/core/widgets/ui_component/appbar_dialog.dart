import 'package:flutter/material.dart';
import 'package:widgets_library/widgets_library.dart';

class DialogAppBar extends StatelessWidget {
  final Widget title;
  final double? height;

  const DialogAppBar({super.key, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height ?? 64,
          child: Row(
            children: [
              SizedBox(width: 20),
              DefaultTextStyle(style: fixelDisplay.s20.w600, child: title),
              const Spacer(),
              SvgIconButton(
                onPressed: () => Navigator.pop(context),
                svgPicture: const Icon(Icons.close, size: 24),
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
