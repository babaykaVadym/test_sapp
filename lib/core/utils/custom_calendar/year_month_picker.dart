import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/utils/custom_calendar/month_picker_selector.dart';
import 'package:flutter_app_scarb/core/utils/custom_calendar/years_picker_selector.dart';
import 'package:flutter_app_scarb/core/utils/extension/string_extensions.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:widgets_library/widgets_library.dart';

class YearMonthPicker extends StatefulWidget {
  YearMonthPicker({
    super.key,
    this.initDate,
    DateTime? firstDate,
    DateTime? lastDate,
    required this.locale,
    required this.label,
  })  : firstDate = firstDate ?? DateTime(1900),
        lastDate = lastDate ?? DateTime.now();
  final DateTime? initDate;
  final DateTime firstDate;
  final DateTime lastDate;
  final String locale;
  final String label;

  @override
  State<YearMonthPicker> createState() => _YearMonthPickerState();
}

class _YearMonthPickerState extends State<YearMonthPicker> {
  DateTime? selectedDate;
  int curentPageIndex = 0;
  final PageController _pageController = PageController();

  late int selectedYear;
  late String selectedMonth = '';
  late List<String> monthsList = [];

  @override
  void initState() {
    if (widget.initDate != null) {
      selectedYear = widget.initDate!.year;
    } else {
      selectedYear = DateTime.now().year;
    }
    monthsList = _getMonthsList();
    if (widget.initDate != null) {
      selectedMonth = monthsList[widget.initDate!.month];
    } else {
      selectedMonth = monthsList.first;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CompactDialogDecorator(
      height: 532,
      title: Text(
        widget.label,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            LocaleKeys.calendarPicker_cancelBtn.tr(),
          ),
        ),
        TextButton(
          onPressed: () {
            final date = DateTime(
              selectedYear,
              (monthsList.indexOf(selectedMonth) + 1),
            );

            Navigator.pop(
              context,
              date,
            );
          },
          child: Text(
            LocaleKeys.calendarPicker_confirmBtn.tr(),
          ),
        ),
      ],
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => changeView(0),
              child: Text(
                "${selectedMonth.capitalizeFirstLetter()} $selectedYear",
                style: MainTextStyles.subtitle(context),
              ),
            ),
            spaceVer22,
            Expanded(
              child: PageView(
                pageSnapping: false,
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  YearsPickerSelector(
                    endYear: widget.lastDate.year,
                    startYear: widget.firstDate.year,
                    initYear: selectedYear,
                    selectedYear: (p0) {
                      setState(() {
                        selectedYear = p0;
                        changeView(1);
                      });
                    },
                  ),
                  MonthPickerSelector(
                    monthList: monthsList,
                    selectedMonth: (m) {
                      setState(() {
                        selectedMonth = monthsList[m];
                      });
                    },
                    initMonth: selectedMonth,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getMonthsList() {
    final DateFormat dateFormat = DateFormat('MMMM', widget.locale);
    List<String> months = [];

    for (int i = 1; i <= 12; i++) {
      DateTime date = DateTime(2025, i);

      months.add(dateFormat.format(date));
    }

    return months;
  }

  changeView(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 260),
      curve: Curves.easeInOut,
    );
  }
}
