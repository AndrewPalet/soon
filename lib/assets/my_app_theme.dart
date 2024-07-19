import 'package:soon/global/constants.dart';
import 'package:soon/ui/shared/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppTheme {
  static ThemeData get themeData {
    // TODO define your own flavors if needed
    return ThemeData(primaryColor: Color(0xff2D9CDB));
  }
}

extension CustomTextTheme on TextTheme {
  TextStyle get listTileTitleTextStyle => TextStyle(
    color: Get.theme.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 14.0 : 30.0,
  );

  TextStyle get homeAppNameTextStyle => TextStyle(
    // fontSize: Get.context.width * 0.06,
    fontSize: Get.width * 0.06,
    fontWeight: FontWeight.w800,
  );

  TextStyle get appHeaderUsageTextStyle => TextStyle(
    // fontSize: Get.context.width * 0.03,
    fontSize: Get.width * 0.03,
    fontWeight: FontWeight.w400,
  );

  TextStyle get appVersionTextStyle =>
      appHeaderUsageTextStyle.copyWith(color: Colors.grey);

  TextStyle get textFormFieldTextStyle => TextStyle(
    color: Get.theme.colorScheme.hintColor,
    fontWeight: FontWeight.w500,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 22.0,
  );

  TextStyle get hintErrorTextStyle => TextStyle(
    fontSize: ResponsiveWidget.isSmartphone ? 14.0 : 22.0,
  );

  TextStyle get reusableExtensionCardTitleTextStyle => TextStyle(
    color: Get.theme.primaryColor,
    fontSize: ResponsiveWidget.isSmartphone ? 16.0 : 24.0,
    fontWeight: FontWeight.w500,
  );

  TextStyle get listTileSubtitleTextStyle => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );

  TextStyle get listTileLeadingTextStyle => TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );

  TextStyle get radioBtnTextStyle => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );

  TextStyle get reportOverviewHeaderTextStyle => TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );

  TextStyle get viewChecksAppbarTitleTextStyle => TextStyle(
    fontSize: ResponsiveWidget.isTabletOrBigDeviceScreen ? 24.0 : 12.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.0,
  );

  TextStyle get viewChecksAppBarSubtitleTextStyle => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 22.0,
    color: Colors.white,
  );

  TextStyle get dialogMsgHeaderTS => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 18.0 : 30.0,
  );

  TextStyle get dialogMsgBodyTS => TextStyle(
    color: Colors.grey[700],
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 16.0 : 26.0,
  );

  TextStyle get dialogMsgButtonTS => TextStyle(
    color: Get.theme.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 16.0 : 26.0,
  );

  TextStyle get snackBarMsgTextStyle => TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 14.0 : 30.0,
  );

  TextStyle get checkOutViewCardHeaderTS => TextStyle(
    color: Get.theme.primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 32.0 : 60.0,
  );

  TextStyle get checkOutViewCardBodyTS => TextStyle(
    color: Colors.grey[700],
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 14.0 : 28.0,
  );

  TextStyle get checkOutViewCardBodyEmployeeNameTS => TextStyle(
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 18.0 : 34.0,
  );

  TextStyle get checkOutViewCardListHeaderTS => TextStyle(
    color: Get.theme.primaryColor,
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 14.0 : 28.0,
  );

  TextStyle get checkOutViewCardListBodyTS => TextStyle(
    color: Colors.grey[700],
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );

  TextStyle get reportOverviewTopText => TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );
  TextStyle get reportOverviewTopBoldText => TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );

  TextStyle get reportOverviewBottomText => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: ResponsiveWidget.isSmartphone ? 12.0 : 24.0,
  );
}

extension CustomInputDecoration on InputDecoration {
  InputDecoration get textFieldInputDecoration => InputDecoration(
    hintText: 'kTextFieldInputDecorationHintText',
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Get.theme.primaryColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Get.theme.primaryColor, width: 3.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );

  InputDecoration get textFieldImageDecoration => InputDecoration(
    hintText: 'kTextFieldImageDecorationHinText',
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 20.0,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Get.theme.primaryColor, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Get.theme.primaryColor, width: 3.0),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}

extension CustomColorScheme on ColorScheme {
  Color get primaryColor => const Color(0xff2D9CDB);
  Color get backGroundColor => const Color(0xffd4ddea);
  Color get listTileLeadingOkColor => const Color(0xff27AE60);
  Color get listTileTrailingIconColor => const Color(0xff2D9CDB);
  Color get listTileLeadingAttentionColor => const Color(0xFFEB5757);
  Color get cardReplacementContainerColor => const Color(0xFFE0E0E0);
  Color get hintColor => const Color(0xFF9E9E9E);
  Color get bannerColorGreen => const Color(0xff27AE60);
  Color get bannerColorOrange => const Color(0xfff28712);
  Color get bannerColorRed => const Color(0xFFD22B2B);
  Color get reportOverviewClearCheckoutColor => const Color(0xff5A8E22);
  Color get reportOverviewIssuesCheckoutColor => const Color(0xFFF18712);
  Color get reportOverviewCardColor => const Color(0xFFF0F0F0);
}
