import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/date_time.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/utils/custom_calendar/year_month_picker.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/widgets_library.dart';

class MonthYearPicker extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final void Function(DateTime?) onChanged;
  final bool showErrorBorder;
  final Function? onTap;
  final String label;
  final String? subLabel;

  MonthYearPicker({
    super.key,
    this.initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
    required this.onChanged,
    this.showErrorBorder = false,
    this.onTap,
    required this.label,
    this.subLabel,
  })  : firstDate = firstDate ?? DateTime(1900),
        lastDate = lastDate ?? DateTime(2100);

  @override
  State<MonthYearPicker> createState() => _MonthYearPickerState();
}

class _MonthYearPickerState extends State<MonthYearPicker> {
  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    if (widget.initialDate != null) {
      _dateController.text =
          DateTimeUtils.dateTimeToDateStringWithoutDay(widget.initialDate!) ??
              '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      readOnly: true,
      onTap: () async {
        final date = await showDialog<DateTime?>(
            context: context,
            builder: (_) => YearMonthPicker(
                  label: widget.subLabel ?? widget.label,
                  initDate: DateTime.now(),
                  locale: Localizations.localeOf(context).toString(),
                ));

        if (date != null) {
          _dateController.text =
              DateTimeUtils.dateTimeToDateStringWithoutDay(date) ?? '';

          widget.onChanged(DateUtils.dateOnly(date));
          setState(() {});
        } else {
          widget.onChanged(null);
        }
      },
      controller: _dateController,
      showErrorBorder: widget.showErrorBorder,
      suffixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: SvgPicture.asset(
          SvgImages.calendarIcon,
        ),
      ),
      label: widget.label,
      hintText: LocaleKeys.onboarding_specifyTheDate.tr(),
    );
  }
}
