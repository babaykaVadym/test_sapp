import 'package:flutter/material.dart';
import 'package:widgets_library/core/styles/colors.dart';

class YearsPickerSelector extends StatelessWidget {
  const YearsPickerSelector(
      {super.key,
      required this.selectedYear,
      required this.startYear,
      required this.endYear,
      this.initYear});
  final Function(int) selectedYear;
  final int startYear;
  final int endYear;
  final int? initYear;

  @override
  Widget build(BuildContext context) {
    List<int> years =
        List.generate(endYear - startYear + 1, (index) => startYear + index)
            .reversed
            .toList();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5,
      ),
      itemCount: years.length,
      itemBuilder: (context, index) {
        int year = years[index];
        bool isSelected = year == initYear;

        return GestureDetector(
          onTap: () {
            selectedYear(year);
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
              year.toString(),
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
