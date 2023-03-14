import 'package:flutter/material.dart';
import 'package:smartavia_weather/src/res/app_typography/app_typography.dart';
import 'package:smartavia_weather/src/res/colors/app_colors.dart';

abstract class AppTheme {
  static ThemeData mainTheme = ThemeData(
      primarySwatch: Colors.blue,
      textTheme: _TextTheme.textTheme,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.red,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: AppTypography.body1.copyWith(
          color: AppColors.grey,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grey,
            width: 0.5,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grape,
            width: 2,
          ),
        ),
      ),
      backgroundColor: AppColors.white);
}

///TextTheme of the project
abstract class _TextTheme {
  static TextTheme textTheme = TextTheme(
    headlineLarge: AppTypography.header1,
    headlineMedium: AppTypography.header2,
    bodyLarge: AppTypography.body1,
    bodyMedium: AppTypography.body2,
    bodySmall: AppTypography.body3,
  );
}
