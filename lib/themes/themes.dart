import 'package:flutter/material.dart';
import 'package:foodule/themes/app_colors.dart';
import 'package:foodule/themes/text_themes.dart';

final ThemeData kLightTheme = _buildLightTheme();
final ThemeData kDarkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  const primaryColor = AppColors.primaryOrangeRed;
  const accentColor = AppColors.neutral1;
  // final secondaryColor = AppColors.dark;
  // const backgroundColor = AppColors.greyLight;
  // const disableColor = AppColors.muteGrey;
  // const inputBorderTextField = OutlineInputBorder(
  //   borderSide: BorderSide(color: AppColors.basicGreen, width: 1),
  // );
  // final InputBorder errorInputBorderTextField = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(6.0),
  //   borderSide: const BorderSide(color: AppColors.redLight,width: 0.5),
  // );
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: AppColors.neutralWhite,
    errorColor: AppColors.semanticRed,
    accentTextTheme: TextThemeApp.accentTextTheme,
    primaryTextTheme: TextThemeApp.primaryTextTheme,
    iconTheme: IconThemeData(
      color: Colors.red,
      size: 28,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryOrangeRed,
      colorScheme: ColorScheme.light(primary: AppColors.primaryOrangeRed),
    ),
  );
}

ThemeData _buildDarkTheme() {
  // const primaryColor = AppColors.basicGreen;
  // final secondaryColor = AppColors.dark;
  // const backgroundColor = AppColors.greyLight;
  // const disableColor = AppColors.muteGrey;
  // const inputBorderTextField = OutlineInputBorder(
  //   borderSide: BorderSide(color: AppColors.basicGreen, width: 1),
  // );
  // final InputBorder errorInputBorderTextField = OutlineInputBorder(
  //   borderRadius: BorderRadius.circular(6.0),
  //   borderSide: const BorderSide(color: AppColors.redLight,width: 0.5),
  // );
  return ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(),
    primaryTextTheme: TextTheme(),
    accentTextTheme: TextTheme(),
  );
}
