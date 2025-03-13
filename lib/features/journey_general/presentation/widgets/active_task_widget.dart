import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/button_constants.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/core/translations/local_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_library/core/styles/colors.dart';
import 'package:widgets_library/core/widgets/buttons/button_svg_icon.dart';
import 'package:widgets_library/core/widgets/buttons/checkbox_button.dart';

class ActiveTaskWidget extends StatelessWidget {
  const ActiveTaskWidget(
      {super.key, this.selectValue, required this.onSelect, this.taskType});

  final bool? selectValue;
  final Function(bool?) onSelect;
  final String? taskType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.6,
      decoration: BoxDecoration(
          color: Clr.of(context).primaryBlue40,
          border: Border(
            top: BorderSide(
              color: Clr.of(context).primaryBlue20,
              width: ButtonConstants.unselectedBorderWidth,
            ),
            right: BorderSide(
              color: Clr.of(context).primaryBlue20,
              width: ButtonConstants.unselectedBorderWidth,
            ),
            bottom: BorderSide(
              color: Clr.of(context).primaryBlue20,
              width: ButtonConstants.bottomUnselectedBorderWidth,
            ),
            left: BorderSide(
              color: Clr.of(context).primaryBlue20,
              width: ButtonConstants.unselectedBorderWidth,
            ),
          ),
          borderRadius: BorderRadius.circular(14)),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 0,
              right: 80,
              child: SvgPicture.asset(
                SvgImages.roadImageIcon,
              )),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  CheckboxButton(
                    initValue: selectValue,
                    onChanged: (p0) => onSelect(p0),
                  ),
                  spaceHor6,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${LocaleKeys.journeyGeneral_additionalTask.tr()}:",
                        style: MainTextStyles.textDefaultStyle.copyWith(
                          color: Clr.of(context).neutralGrey100,
                        ),
                      ),
                      Text(
                        taskType ?? '',
                        style: MainTextStyles.textBaseBoldStyle.copyWith(
                          color: Clr.of(context).neutralGrey100,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SvgIconButton(
                      padding: 0,
                      onPressed: () {},
                      svgPicture: Icon(
                        Icons.arrow_forward_ios,
                        color: Clr.of(context).neutralGrey100,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
