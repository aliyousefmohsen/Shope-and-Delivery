import 'package:flutter/material.dart';
import 'package:test2/core/utils/assets_manager.dart';
import 'package:test2/core/utils/color_manager.dart';

class StylesManager {
  // Helper method to create text styles
  static TextStyle getTextStyle(double fontSize, FontWeight fontWeight,
      {Color? color}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: ColorManager.blackColor,
      fontFamily: AssetsManager.manRopeFont,
    );
  }

  // H1 Styles
  static final TextStyle h1Bold30 = getTextStyle(30, FontWeight.bold);
  static final TextStyle h1SemiBold30 = getTextStyle(30, FontWeight.w600);
  static final TextStyle h1Medium30 = getTextStyle(30, FontWeight.w500);
  static final TextStyle h1Regular30 = getTextStyle(30, FontWeight.normal);

  // H2 Styles
  static final TextStyle h2Bold26 = getTextStyle(26, FontWeight.bold);
  static final TextStyle h2SemiBold26 = getTextStyle(26, FontWeight.w600);
  static final TextStyle h2Medium26 = getTextStyle(26, FontWeight.w500);
  static final TextStyle h2Regular26 = getTextStyle(26, FontWeight.normal);

  // H3 Styles
  static final TextStyle h3Bold20 = getTextStyle(20, FontWeight.bold);
  static final TextStyle h3SemiBold20 = getTextStyle(20, FontWeight.w600);
  static final TextStyle h3Medium20 = getTextStyle(20, FontWeight.w500);
  static final TextStyle h3Regular20 = getTextStyle(20, FontWeight.normal);

  // H4 Styles
  static final TextStyle h4Bold18 = getTextStyle(18, FontWeight.bold);
  static final TextStyle h4SemiBold18 = getTextStyle(18, FontWeight.w600);
  static final TextStyle h4Medium18 = getTextStyle(18, FontWeight.w500);
  static final TextStyle h4Regular18 = getTextStyle(18, FontWeight.normal);

  // Body 1 Styles
  static final TextStyle body1SemiBold16 = getTextStyle(16, FontWeight.w600);
  static final TextStyle body1Medium16 = getTextStyle(16, FontWeight.w500);
  static final TextStyle body2Regular16 = getTextStyle(16, FontWeight.normal);

  // Body 02 Styles
  static TextStyle body02SemiBold14 = getTextStyle(14, FontWeight.w600);
  static TextStyle body02Medium14 = getTextStyle(14, FontWeight.w500);
  static TextStyle body02Regular14 = getTextStyle(14, FontWeight.normal);

  // Label
  static final TextStyle labelMedium12 = getTextStyle(12, FontWeight.w500);
  static final TextStyle labelRegular12 = getTextStyle(12, FontWeight.normal);

  // Button
  static final TextStyle button1_14 = getTextStyle(14, FontWeight.w600);
  static final TextStyle button2_12 = getTextStyle(12, FontWeight.w600);
}
