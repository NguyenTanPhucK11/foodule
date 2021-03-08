import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';

class FontFamily {
  static String fontAveinr = 'AvenirNextLTPro';
}

class StylesText {
  static TextStyle headline2 = TextStyle(
    fontSize: 40,
    fontFamily: FontFamily.fontAveinr,
  );
  static TextStyle headline3 = TextStyle(
    fontSize: 27,
    fontFamily: FontFamily.fontAveinr,
  );
  static TextStyle headline4 = TextStyle(
    fontSize: 20,
    fontFamily: FontFamily.fontAveinr,
  );
  static TextStyle headline5 = TextStyle(
    fontSize: 20,
    fontFamily: FontFamily.fontAveinr,
  );
  static TextStyle headline6 = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.fontAveinr,
    fontWeight: FontWeight.bold,
  ).apply(
    color: AppColors.neutral1,
  );
  static TextStyle bodyText1 = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.fontAveinr,
  );
  static TextStyle bodyText2 = TextStyle(
    fontSize: 15,
    fontFamily: FontFamily.fontAveinr,
  ).apply(
    color: AppColors.neutral2,
  );
  static TextStyle bodyText3 = TextStyle(
    fontSize: 14,
    fontFamily: FontFamily.fontAveinr,
  ).apply(
    color: AppColors.neutralWhite,
  );
  static TextStyle caption = TextStyle(
    fontSize: 12,
    fontFamily: FontFamily.fontAveinr,
  );
}
