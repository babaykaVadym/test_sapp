import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/date_time.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets_library/widgets_library.dart';

class DatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final void Function(DateTime?) onChanged;
  final bool showErrorBorder;
  final Function? onTap;
  final String label;
  final String? hintText;

  DatePicker({
    super.key,
    this.initialDate,
    this.hintText,
    DateTime? firstDate,
    DateTime? lastDate,
    required this.onChanged,
    this.showErrorBorder = false,
    this.onTap,
    required this.label,
  })  : firstDate = firstDate ?? DateTime(1900),
        lastDate = lastDate ?? DateTime(2100);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
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
        final date = await showDatePicker(
          context: context,
          initialDate: widget.initialDate ?? DateTime.now(),
          firstDate: widget.firstDate,
          helpText: widget.hintText ?? LocaleKeys.onboarding_chooseDate.tr(),
          lastDate: widget.lastDate,
          initialDatePickerMode: DatePickerMode.year,
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: Clr.of(context).neutralGrey100,
                ),
              ),
              child: child!,
            );
          },
        );
        if (date != null) {
          _dateController.text = DateTimeUtils.dateTimeToDateString(date) ?? '';

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
