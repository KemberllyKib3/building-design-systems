import 'package:building_design_systems/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default colors.
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      error: AppColors.helperRed,
    ),

    // Define the default app bar style.
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      iconTheme: IconThemeData(color: AppColors.white),
    ),

    // Define the default text style theme.
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
      button: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    ),
  );
}
