import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

///TODO: need to agree on this flow

class KidsCountDialog extends StatefulWidget {
  const KidsCountDialog({super.key});

  @override
  State<KidsCountDialog> createState() => _KidsCountDialogState();
}

class _KidsCountDialogState extends State<KidsCountDialog> {
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        LocaleKeys.onboarding_enterTheNumberChildren.tr(),
      ),
      content: StatefulBuilder(
        builder: (context, setState) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4,
            children: [
              SvgIconButton(
                svgPicture: const Icon(Icons.remove),
                onPressed: selectedQuantity > 1
                    ? () {
                        setState(() => selectedQuantity--);
                      }
                    : null,
              ),
              Text(
                "$selectedQuantity",
                style: const TextStyle(fontSize: 20),
              ),
              SvgIconButton(
                svgPicture: const Icon(Icons.add),
                onPressed: () {
                  setState(() => selectedQuantity++);
                },
              ),
            ],
          );
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            LocaleKeys.onboarding_cancelBtn.tr(),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, selectedQuantity),
          child: Text(
            LocaleKeys.onboarding_confirmBtn.tr(),
          ),
        ),
      ],
    );
  }
}
