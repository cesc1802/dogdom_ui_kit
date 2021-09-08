import 'package:flutter/material.dart';

import '../resources/dimens.dart';
import 'app_colors.dart';
import 'app_text_theme.dart';

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);

class AppThemes {
  static final appLightTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    textTheme: AppTextTheme.textTheme.apply(
      displayColor: AppColors.primaryColor,
      bodyColor: AppColors.primaryColor,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(vertical: Dimens.gap_dp16),
        ),
        backgroundColor:
            MaterialStateProperty.all<Color>(AppColors.primaryColor),
        overlayColor: MaterialStateProperty.all<Color>(
          Colors.white.withOpacity(0.2),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          AppTextTheme.textTheme.headline2!.copyWith(fontSize: 13),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.gap_dp24),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(Dimens.gap_dp8),
      isDense: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.gap_dp32),
        borderSide: BorderSide(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Dimens.gap_dp32),
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primaryColor.withOpacity(0.6),
      unselectedItemColor: AppColors.primaryColor.withOpacity(0.6),
      selectedIconTheme: IconThemeData(
        color: AppColors.primaryColor,
      ),
    ),
  );
}
