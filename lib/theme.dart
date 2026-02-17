import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color lightBlue = Color(0xFFE1F5FE); // very light blue
  static const Color white = Colors.white;
  static const Color darkBlue = Color(0xFF0D47A1); // deep blue
}

class AppTheme {
  static ThemeData get themeData {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.darkBlue,
      primary: AppColors.darkBlue,
      secondary: AppColors.lightBlue,
      background: AppColors.white,
      surface: AppColors.white,
      onPrimary: AppColors.white,
      onBackground: AppColors.darkBlue,
      onSurface: AppColors.darkBlue,
    );

    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Outfit',
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.darkBlue,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkBlue,
          foregroundColor: AppColors.white,
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: AppColors.darkBlue),
        bodyMedium: TextStyle(color: AppColors.darkBlue),
      ),
    );
  }
}
