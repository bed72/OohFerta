import 'package:flutter/material.dart';

class WarningColorsTheme extends ThemeExtension<WarningColorsTheme> {
  final Color? w100;
  final Color? w200;
  final Color? w300;
  final Color? w400;
  final Color? w500;
  final Color? w600;
  final Color? w700;

  WarningColorsTheme({
    required this.w100,
    required this.w200,
    required this.w300,
    required this.w400,
    required this.w500,
    required this.w600,
    required this.w700,
  });

  factory WarningColorsTheme.build() => WarningColorsTheme(
        w100: const Color(0xFFFEFBCB),
        w200: const Color(0xFFFEF798),
        w300: const Color(0xFFFCF065),
        w400: const Color(0xFFFAE93E),
        w500: const Color(0xFFD4BC00),
        w600: const Color(0xFFB19C00),
        w700: const Color(0xFFF7DE00),
      );

  @override
  ThemeExtension<WarningColorsTheme> copyWith({
    Color? w100,
    Color? w200,
    Color? w300,
    Color? w400,
    Color? w500,
    Color? w600,
    Color? w700,
  }) =>
      WarningColorsTheme(
        w100: w100 ?? this.w100,
        w200: w200 ?? this.w200,
        w300: w300 ?? this.w300,
        w400: w400 ?? this.w400,
        w500: w500 ?? this.w500,
        w600: w600 ?? this.w600,
        w700: w700 ?? this.w700,
      );

  @override
  ThemeExtension<WarningColorsTheme> lerp(
    covariant ThemeExtension<WarningColorsTheme>? other,
    double t,
  ) =>
      other is! WarningColorsTheme
          ? this
          : WarningColorsTheme(
              w100: Color.lerp(w100, other.w100, t),
              w200: Color.lerp(w200, other.w200, t),
              w300: Color.lerp(w300, other.w300, t),
              w400: Color.lerp(w400, other.w400, t),
              w500: Color.lerp(w500, other.w500, t),
              w600: Color.lerp(w600, other.w600, t),
              w700: Color.lerp(w700, other.w700, t),
            );
}
