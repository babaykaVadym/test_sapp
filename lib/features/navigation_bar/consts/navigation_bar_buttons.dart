import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_app_scarb/core/helper/images.dart';
import 'package:flutter_app_scarb/features/navigation_bar/model/navigation_button_model.dart';
import 'package:flutter_app_scarb/generated/locale_keys.g.dart';

final List<NavigationButtonModel> navigationButtons = [
  NavigationButtonModel(
    title: LocaleKeys.navigationBar_myWayLabel.tr(),
    iconPath: SvgImages.navigationMyWayIcon,
  ),
  NavigationButtonModel(
    title: LocaleKeys.navigationBar_chatLabel.tr(),
    iconPath: SvgImages.navigationChatIcon,
  ),
  NavigationButtonModel(
    title: LocaleKeys.navigationBar_moodLabel.tr(),
    iconPath: SvgImages.navigationMoodIcon,
  ),
  NavigationButtonModel(
    title: LocaleKeys.navigationBar_feedLabel.tr(),
    iconPath: SvgImages.navigationFeedIcon,
  ),
  NavigationButtonModel(
    title: LocaleKeys.navigationBar_profileLabel.tr(),
    iconPath: SvgImages.navigationProfileIcon,
  ),
];
