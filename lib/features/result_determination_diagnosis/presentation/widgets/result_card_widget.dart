import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/core/style/text_styles/basic_text_styles.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/data/models/result_determination_diagnosis_model.dart';
import 'package:flutter_app_scarb/features/result_determination_diagnosis/presentation/screens/pages/symptom_description/symptom_description_dialog.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets_library/core/consts/button_constants.dart';
import 'package:widgets_library/widgets_library.dart';

class ResultCardWidget extends StatelessWidget {
  const ResultCardWidget({
    super.key,
    required this.index,
    required this.resultItemModel,
  });
  final int index;
  final ResultItemModel resultItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: Border(
          top: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          right: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
          bottom: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.bottomUnselectedBorderWidth,
          ),
          left: BorderSide(
            color: Clr.of(context).neutralGrey70,
            width: ButtonConstants.unselectedBorderWidth,
          ),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TitelCardWidget(
                  resultItemModel: resultItemModel,
                ),
                ProgressIndicatorWidget(
                  maxValue: resultItemModel.scaleMax,
                  result: resultItemModel.result,
                ),
              ],
            ),
          )),
          ReorderableDragStartListener(index: index, child: const IconWidget()),
        ],
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Clr.of(context).primaryBlue90,
      width: 48,
      child: Center(
        child: SvgPicture.asset(
          SvgImages.resultDeterminatIoniconBtn,
          colorFilter:
              ColorFilter.mode(Clr.of(context).primaryBlue40, BlendMode.srcIn),
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}

class TitelCardWidget extends StatelessWidget {
  const TitelCardWidget({super.key, required this.resultItemModel});

  final ResultItemModel resultItemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgIconButton(
          onPressed: () => showDialog<DateTime?>(
              context: context,
              builder: (_) => SymptomDescriptionDialog(
                    description: resultItemModel.description ?? '',
                    title: resultItemModel.type ?? '',
                  )),
          padding: 0,
          svgPicture: SvgPicture.asset(
            SvgImages.resultDeterminationIconInfo,
            height: 26,
            width: 26,
          ),
        ),
        spaceHor8,
        Text(
          resultItemModel.type ?? '',
          style: MainTextStyles.textBaseBoldStyle,
        ),
      ],
    );
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget(
      {super.key, required this.result, required this.maxValue});

  final int result;
  final int maxValue;

  @override
  Widget build(BuildContext context) {
    Color textColor = Clr.of(context).primaryBlue40;
    Color itemColor = Clr.of(context).primaryBlue90;

    if (result == maxValue) {
      textColor = Clr.of(context).errorOrange40;
      itemColor = Clr.of(context).errorOrange90;
    } else if (result >= maxValue / 2) {
      textColor = Clr.of(context).tertiaryYellow40;
      itemColor = Clr.of(context).tertiaryYellow90;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: itemColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SvgPicture.asset(
                SvgImages.resultDeterminationAutoAwesome,
                colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
                height: 16,
                width: 16,
              ),
              spaceHor4,
              Text(
                "${LocaleKeys.resultDetermination_yourResult.tr()}:",
                style: MainTextStyles.textDefaultBoldStyle.copyWith(
                  color: textColor,
                ),
              ),
              const Spacer(),
              Text(
                "$result ${LocaleKeys.resultDetermination_pointsLabel.tr()}",
                style: MainTextStyles.textDefaultBoldStyle.copyWith(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
        spaceVer12,
        LayoutBuilder(builder: (context, constrained) {
          final itemLeng = constrained.maxWidth / maxValue;

          return SizedBox(
            height: 4,
            child: Row(
              children: [
                Container(
                  width: itemLeng * result,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: textColor,
                  ),
                ),
                if (result != maxValue - 1) ...[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Clr.of(context).neutralGrey90,
                      ),
                    ),
                  ),
                ]
              ],
            ),
          );
        })
      ],
    );
  }
}
