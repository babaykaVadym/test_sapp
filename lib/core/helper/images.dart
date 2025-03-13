// templates for images and icons
// abstract class SvgIcons {
//   static const String _path = 'assets/icons/svg';
// }
//
// abstract class PngIcons {
//   static const String _path = 'assets/icons/png';
// }
//
// abstract class JpgImages {
//   static const String _path = 'assets/images';
// }
//
// abstract class PngImages {
//   static const String _path = 'assets/images';
// }
//
//
//

abstract class AppImages {
  static const String _path = 'assets/images/png';

  static String get splashIcon => "$_path/splash_icon.png";
}

abstract class SvgImages {
  static const String _path = 'assets/images/svg';

  //app
  static String get visibility => "$_path/visibility.svg";
  static String get visibilityOff => "$_path/visibility_off.svg";
  static String get errorIcon => "$_path/error_icon.svg";
  static String get closeIcon => "$_path/close_icon.svg";

  //onboarding
  static String get onboardingCharacter => "$_path/onboarding_character.svg";
  static String get backIcon => "$_path/back_icon.svg";
  static String get calendarIcon => "$_path/calendar_icon.svg";
  static String get onboardingBirthday => "$_path/onboard_svg/birthday_onb.svg";
  static String get questionnaireImage =>
      "$_path/onboard_svg/questionnaire_images.svg";
  static String get onboardingHello => "$_path/onboard_svg/frame_hello.svg";
  static String get onboardingGender => "$_path/onboard_svg/gender_onb.svg";
  static String get onboardingIdentity => "$_path/onboard_svg/identity_onb.svg";
  static String get onboardingChildrens =>
      "$_path/onboard_svg/childrens_onb.svg";
  static String get statsImage => "$_path/onboard_svg/stats.svg";
  static String get hartsImage => "$_path/onboard_svg/harts.svg";

  //questionnaire
  static String get questionnaireInitIcon =>
      "$_path/questionnaire_svg/questionnaire_init_icon.svg";
  static String get questionnaireArrowsIcons =>
      "$_path/questionnaire_svg/questionnaire_arrows_icon.svg";
  static String get questionnaireCloudIcon =>
      "$_path/questionnaire_svg/questionnaire_cloud_icon.svg";
  static String get questionnaireCloudsIcon =>
      "$_path/questionnaire_svg/questionnaire_clouds_icon.svg";
  static String get questionnaireDropsIcon =>
      "$_path/questionnaire_svg/questionnaire_drops_icon.svg";
  static String get questionnaireHeartIcon =>
      "$_path/questionnaire_svg/questionnaire_heart_icon.svg";
  static String get questionnaireMoonIcon =>
      "$_path/questionnaire_svg/questionnaire_moon_icon.svg";
  static String get questionnaireNonIcon =>
      "$_path/questionnaire_svg/questionnaire_non_icon.svg";
  static String get questionnairePersIcon =>
      "$_path/questionnaire_svg/questionnaire_pers_icon.svg";
  static String get questionnaireRainIcon =>
      "$_path/questionnaire_svg/questionnaire_rain_icon.svg";
  static String get questionnaireSleepsIcon =>
      "$_path/questionnaire_svg/questionnaire_sleeps_icon.svg";

  //emotion
  static String get skyEmotionState =>
      "$_path/emotion_svg/sky_emotion_state.svg";

  //journey general
  static String get btnVectorTop => "$_path/journey_general/btn_vector_top.svg";
  static String get btnVectorBottom =>
      "$_path/journey_general/btn_vector_bottom.svg";
  static String get journeyCheckIcon => "$_path/journey_general/check.svg";
  static String get journeyEmotionsIcon =>
      "$_path/journey_general/emotions.svg";
  static String get journeyFlowerIcon => "$_path/journey_general/flower.svg";
  static String get journeyIdeaIcon => "$_path/journey_general/idea.svg";
  static String get journeyLightningIcon =>
      "$_path/journey_general/lightning.svg";
  static String get journeyLockIcon => "$_path/journey_general/lock.svg";
  static String get journeyRainIcon => "$_path/journey_general/rain.svg";
  static String get roadImageIcon => "$_path/journey_general/road_image.svg";
  static String get journeyThinkingIcon =>
      "$_path/journey_general/thinking.svg";

  //journey way icon
  static String get journeyWayArrows =>
      "$_path/journey_general/journey_way_icon/arrows.svg";
  static String get journeyWayCharacterGrey =>
      "$_path/journey_general/journey_way_icon/character_grey.svg";
  static String get journeyWayCharacter =>
      "$_path/journey_general/journey_way_icon/character.svg";
  static String get journeyWayHeart =>
      "$_path/journey_general/journey_way_icon/heart.svg";
  static String get journeyWayLightnings =>
      "$_path/journey_general/journey_way_icon/lightnings.svg";
  static String get journeyWayLine =>
      "$_path/journey_general/journey_way_icon/line.svg";
  static String get journeyWayShine =>
      "$_path/journey_general/journey_way_icon/shine.svg";
  static String get journeyWaySpecial =>
      "$_path/journey_general/journey_way_icon/special.svg";
  static String get journeyWayStar =>
      "$_path/journey_general/journey_way_icon/star.svg";
  static String get journeyWayRoad =>
      "$_path/journey_general/journey_way_icon/road.svg";
  static String get journeyWayWind =>
      "$_path/journey_general/journey_way_icon/wind.svg";

  //journey practice icon
  static String get journeyPracticeArrow =>
      "$_path/journey_general/journey_practice_icon/arrow.svg";
  static String get journeyPracticeCheck =>
      "$_path/journey_general/journey_practice_icon/check.svg";
  static String get journeyPracticeCycle =>
      "$_path/journey_general/journey_practice_icon/cycle.svg";
  static String get journeyPracticeIdea =>
      "$_path/journey_general/journey_practice_icon/idea.svg";
  static String get journeyPracticeLightnings =>
      "$_path/journey_general/journey_practice_icon/lightnings.svg";
  static String get journeyPracticeLock =>
      "$_path/journey_general/journey_practice_icon/lock.svg";
  static String get journeyPracticeQuestions =>
      "$_path/journey_general/journey_practice_icon/questions.svg";

  //Navigation Bar
  static String get navigationChatIcon => "$_path/navigation_bar/chat_icon.svg";
  static String get navigationFeedIcon => "$_path/navigation_bar/feed_icon.svg";
  static String get navigationMoodIcon => "$_path/navigation_bar/mood_icon.svg";
  static String get navigationMyWayIcon =>
      "$_path/navigation_bar/my_way_icon.svg";
  static String get navigationProfileIcon =>
      "$_path/navigation_bar/profile_icon.svg";

  //result_determination
  //
  static String get resultDeterminationAutoAwesome =>
      "$_path/result_determination/auto_awesome.svg";
  static String get resultDeterminationCharacterHands =>
      "$_path/result_determination/character_hands.svg";
  static String get resultDeterminationCharacter =>
      "$_path/result_determination/character.svg";
  static String get resultDeterminatIoniconBtn =>
      "$_path/result_determination/icon_btn.svg";
  static String get resultDeterminationIconInfo =>
      "$_path/result_determination/icon_info.svg";

  //questionnaire_without_diagnosis
  static String get withoutDiagnosisQuestionnaireIc0 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic0.svg";
  static String get withoutDiagnosisQuestionnaireIc1 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic1.svg";
  static String get withoutDiagnosisQuestionnaireIc2 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic2.svg";
  static String get withoutDiagnosisQuestionnaireIc3 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic3.svg";
  static String get withoutDiagnosisQuestionnaireIc4 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic4.svg";
  static String get withoutDiagnosisQuestionnaireIc5 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic5.svg";
  static String get withoutDiagnosisQuestionnaireIc6 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic6.svg";
  static String get withoutDiagnosisQuestionnaireIc7 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic7.svg";
  static String get withoutDiagnosisQuestionnaireIc8 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic8.svg";
  static String get withoutDiagnosisQuestionnaireIc9 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic9.svg";
  static String get withoutDiagnosisQuestionnaireIc10 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic10.svg";
  static String get withoutDiagnosisQuestionnaireIc11 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic11.svg";
  static String get withoutDiagnosisQuestionnaireIc12 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic12.svg";
  static String get withoutDiagnosisQuestionnaireIc13 =>
      "$_path/questionnaire_without_diagnosis/questionnaire_ic13.svg";

  //start questionnaire
  static String get startQuestionnaireLightnings =>
      "$_path/start_questionnaire/lightnings.svg";
  static String get startQuestionnaireQuestions =>
      "$_path/start_questionnaire/questions.svg";

  //account settings
  static String get accountSettingsAutFixHigh =>
      "$_path/account_settings/auto_fix_high.svg";
  static String get accountSettingsManageAccounts =>
      "$_path/account_settings/manage_accounts.svg";
  static String get accountSettingsNotifications =>
      "$_path/account_settings/notifications.svg";
  static String get accountSettingsPermIdentity =>
      "$_path/account_settings/perm_identity.svg";
  static String get accountSettingsShield =>
      "$_path/account_settings/shield.svg";
  static String get accountSettingsSubdirectoryArrowRight =>
      "$_path/account_settings/subdirectory_arrow_right.svg";
}
