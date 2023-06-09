import 'package:flutter/material.dart';

class WarningColorsTheme extends ThemeExtension<WarningColorsTheme> {
  final Color? warning;
  final Color? warning100;
  final Color? warning200;
  final Color? warning300;
  final Color? warning400;
  final Color? warning500;
  final Color? warning600;

  WarningColorsTheme({
    required this.warning,
    required this.warning100,
    required this.warning200,
    required this.warning300,
    required this.warning400,
    required this.warning500,
    required this.warning600,
  });

  factory WarningColorsTheme.build() => WarningColorsTheme(
        warning: const Color(0xFFF7DE00),
        warning100: const Color(0xFFFEFBCB),
        warning200: const Color(0xFFFEF798),
        warning300: const Color(0xFFFCF065),
        warning400: const Color(0xFFFAE93E),
        warning500: const Color(0xFFD4BC00),
        warning600: const Color(0xFFB19C00),
      );

  @override
  ThemeExtension<WarningColorsTheme> copyWith({
    Color? warning,
    Color? warning100,
    Color? warning200,
    Color? warning300,
    Color? warning400,
    Color? warning500,
    Color? warning600,
  }) =>
      WarningColorsTheme(
        warning: warning ?? this.warning,
        warning100: warning100 ?? this.warning100,
        warning200: warning200 ?? this.warning200,
        warning300: warning300 ?? this.warning300,
        warning400: warning400 ?? this.warning400,
        warning500: warning500 ?? this.warning500,
        warning600: warning600 ?? this.warning600,
      );

  @override
  ThemeExtension<WarningColorsTheme> lerp(
    covariant ThemeExtension<WarningColorsTheme>? other,
    double t,
  ) =>
      other is! WarningColorsTheme
          ? this
          : WarningColorsTheme(
              warning: Color.lerp(warning, other.warning, t),
              warning100: Color.lerp(warning100, other.warning100, t),
              warning200: Color.lerp(warning200, other.warning200, t),
              warning300: Color.lerp(warning300, other.warning300, t),
              warning400: Color.lerp(warning400, other.warning400, t),
              warning500: Color.lerp(warning500, other.warning500, t),
              warning600: Color.lerp(warning600, other.warning600, t),
            );
}
