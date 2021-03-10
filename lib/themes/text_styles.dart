import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';

class FontFamily {
  static String fontAveinr = 'AvenirNextLTPro';
}

class StylesText {
  static TextStyle headline2 = TextStyle(
    fontSize: 40,
    fontFamily: FontFamily.fontAveinr,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headline3 = TextStyle(
    fontSize: 27,
    fontFamily: FontFamily.fontAveinr,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headline4 = TextStyle(
    fontSize: 24,
    fontFamily: FontFamily.fontAveinr,
    color: AppColors.neutral1,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headline5 = TextStyle(
    fontSize: 20,
    fontFamily: FontFamily.fontAveinr,
    color: AppColors.neutral1,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headline6 = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.fontAveinr,
    fontWeight: FontWeight.bold,
    color: AppColors.neutral1,
  );
  static TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.fontAveinr,
    fontWeight: FontWeight.w500,
    color: AppColors.neutral3,
  );
  static TextStyle bodyText2 = TextStyle(
    fontSize: 15,
    fontFamily: FontFamily.fontAveinr,
    color: AppColors.neutral1,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bodyText3 = TextStyle(
    fontSize: 14,
    fontFamily: FontFamily.fontAveinr,
    color: AppColors.neutralWhite,
    fontWeight: FontWeight.w500,
  );
  static TextStyle caption = TextStyle(
    fontSize: 12,
    fontFamily: FontFamily.fontAveinr,
    color: AppColors.neutral1,
    fontWeight: FontWeight.w500,
  );
}
