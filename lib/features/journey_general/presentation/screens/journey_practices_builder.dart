import 'package:flutter/material.dart';
import 'package:flutter_app_scarb/core/style/consts/spaces.dart';
import 'package:flutter_app_scarb/features/journey_general/const/journey_const.dart';
import 'package:flutter_app_scarb/features/journey_general/data/models/journey_general_model.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/check_point_witget.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/mixin_random_images_selector.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/practices_widget/central_position_practice.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/practices_widget/end_position_practice.dart';
import 'package:flutter_app_scarb/features/journey_general/presentation/widgets/practices_widget/start_position_practice.dart';

class JourneyPracticesBuilder extends StatelessWidget
    with RandomImagesSelectorMixin {
  const JourneyPracticesBuilder({
    super.key,
    required this.checkPointModel,
    required this.checkPointIndex,
    this.currentCheckPoint = false,
    this.showChecpoint = false,
  });
  final CheckPointModel checkPointModel;
  final int checkPointIndex;
  final bool currentCheckPoint;
  final bool showChecpoint;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showChecpoint)
          CheckPointWitget(
            label: '$checkPointIndex',
          ),
        spaceVer6,
        SizedBox(
          height: checkPointModel.practices.length *
              getIconRowHeight(defaultIconSize, defaultIconSpaceSize),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: checkPointModel.practices.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = checkPointModel.practices[index];

              if (index % 4 == 0 || index % 4 == 2) {
                return CentralPositionPractice(
                  iconImage: practiceImage(item.type),
                  isCompleted: item.isCompleted,
                  onTap: () {},
                );
              } else if (index % 4 == 1) {
                return StartPositionPractice(
                  iconImage: practiceImage(item.type),
                  additionalImage:
                      item.isCompleted ? getWayImage : getWayLockImage,
                  isCompleted: item.isCompleted,
                  onTap: () {},
                );
              } else {
                return EndPositionPractice(
                  iconImage: practiceImage(item.type),
                  additionalImage:
                      item.isCompleted ? getWayImage : getWayLockImage,
                  isCompleted: item.isCompleted,
                  onTap: () {},
                );
              }
            },
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: defaultIconSpaceSize,
            ),
          ),
        ),
      ],
    );
  }
}
