import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors/colors.dart';

class Themes {
  static ThemeData light() => ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        colorScheme: lightColors,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 12,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,
          ),
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: const TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: lightColors.background,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );

  static ThemeData dark() => ThemeData(
        useMaterial3: true,
        fontFamily: 'Inter',
        colorScheme: darkColors,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          titleTextStyle: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: darkColors.background,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );
}
