import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/utils/extension/string_extensions.dart';
import 'package:widgets_library/core/styles/colors.dart';

class MonthPickerSelector extends StatelessWidget {
  const MonthPickerSelector(
      {super.key,
      required this.monthList,
      this.initMonth,
      required this.selectedMonth});
  final Function(int) selectedMonth;
  final List<String> monthList;

  final String? initMonth;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5,
      ),
      itemCount: monthList.length,
      itemBuilder: (context, index) {
        String month = monthList[index];

        bool isSelected = month == initMonth;

        return GestureDetector(
          onTap: () {
            selectedMonth(index);
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected
                  ? Clr.of(context).primaryBlue40
                  : Clr.of(context).neutralGrey100,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Text(
              month.capitalizeFirstLetter(),
              style: TextStyle(
                fontSize: 16,
                color: isSelected
                    ? Clr.of(context).neutralGrey100
                    : Clr.of(context).neutralGrey0,
              ),
            ),
          ),
        );
      },
    );
  }
}
