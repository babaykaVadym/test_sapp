import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/widgets/ui_component/appbar_dialog.dart';

/// Implements common look for functional dialogs.
class CompactDialogDecorator extends StatelessWidget {
  final Widget content;
  final CrossAxisAlignment contentAlignment;
  final List<Widget>? actions;

  /// Widget that may appears in actions bar on the start side.
  final Widget? actionsLead;

  /// Title of the dialog that possible be a complex widget. If not provided then
  /// dialog does not have appbar.
  final Widget? title;
  final double? height;
  final double? width;
  final double? actionsWidth;
  final bool addedDivider;

  const CompactDialogDecorator({
    super.key,
    this.title,
    required this.content,
    this.contentAlignment = CrossAxisAlignment.start,
    this.actions,
    this.actionsLead,
    this.height,
    this.width,
    this.addedDivider = false,
    this.actionsWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: width ?? 360),
        child: IntrinsicHeight(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: Clr.of(context).neutralGrey100,
              borderRadius: BorderRadius.circular(20),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Material(
              type: MaterialType.transparency,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Column(
                crossAxisAlignment: contentAlignment,
                children: [
                  if (title != null) DialogAppBar(title: title!, height: 48),
                  Expanded(child: content),
                  if (addedDivider) const Divider(),
                  if (actions != null)
                    SizedBox(
                      height: actionsWidth ?? 88,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            if (actionsLead != null)
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                  end: 20,
                                ),
                                child: actionsLead,
                              ),
                            const Spacer(),
                            ...?actions?.map(
                              (widget) => SizedBox(
                                height: 40,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    start: 8,
                                  ),
                                  child: widget,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
