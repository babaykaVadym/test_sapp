import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/journey_general/const/journey_const.dart';

mixin RandomImagesSelectorMixin {
  static int _indexWay = 0;
  static int _indexWayLock = 0;
  static int _indexTask = 0;

  String get getWayImage {
    String image = practiceHelpIcons[_indexWay];
    _indexWay = (_indexWay + 1) % practiceHelpIcons.length;
    return image;
  }

  String get getWayLockImage {
    String image = practiceNotCompletedHelperIcons[_indexWayLock];
    _indexWayLock =
        (_indexWayLock + 1) % practiceNotCompletedHelperIcons.length;
    return image;
  }

  String get getTaskImage {
    String image = tasksIcons[_indexTask];
    _indexTask = (_indexTask + 1) % tasksIcons.length;
    return image;
  }

  String practiceImage(String? type) {
    String image = '';

    switch (type) {
      case "reflection":
        image = SvgImages.journeyThinkingIcon;
        break;
      case "emotion":
        image = SvgImages.journeyEmotionsIcon;
        break;
      case "anxiety":
        image = SvgImages.journeyRainIcon;
        break;
      case "task":
        image = SvgImages.journeyCheckIcon;
        break;
      case "activate":
        image = SvgImages.journeyLightningIcon;
        break;
      case "work":
        image = SvgImages.journeyIdeaIcon;
        break;
      default:
        image = SvgImages.journeyFlowerIcon;
        break;
    }

    return image;
  }

  double getIconRowHeight(double size, double space) {
    return size + space + 2;
  }
}
