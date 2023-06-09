import 'package:flutter/material.dart';

class DangerColorsTheme extends ThemeExtension<DangerColorsTheme> {
  final Color? danger;
  final Color? danger100;
  final Color? danger200;
  final Color? danger300;
  final Color? danger400;
  final Color? danger500;
  final Color? danger600;

  DangerColorsTheme({
    required this.danger,
    required this.danger100,
    required this.danger200,
    required this.danger300,
    required this.danger400,
    required this.danger500,
    required this.danger600,
  });

  factory DangerColorsTheme.build() => DangerColorsTheme(
        danger: const Color(0xFFE23D24),
        danger100: const Color(0xFFFDE5D2),
        danger200: const Color(0xFFFCC6A7),
        danger300: const Color(0xFFF69E7A),
        danger400: const Color(0xFFED7757),
        danger500: const Color(0xFFC2231A),
        danger600: const Color(0xFFA21215),
      );

  @override
  ThemeExtension<DangerColorsTheme> copyWith({
    Color? danger,
    Color? danger100,
    Color? danger200,
    Color? danger300,
    Color? danger400,
    Color? danger500,
    Color? danger600,
  }) =>
      DangerColorsTheme(
        danger: danger ?? this.danger,
        danger100: danger100 ?? this.danger100,
        danger200: danger200 ?? this.danger200,
        danger300: danger300 ?? this.danger300,
        danger400: danger400 ?? this.danger400,
        danger500: danger500 ?? this.danger500,
        danger600: danger600 ?? this.danger600,
      );

  @override
  ThemeExtension<DangerColorsTheme> lerp(
    covariant ThemeExtension<DangerColorsTheme>? other,
    double t,
  ) =>
      other is! DangerColorsTheme
          ? this
          : DangerColorsTheme(
              danger: Color.lerp(danger, other.danger, t),
              danger100: Color.lerp(danger100, other.danger100, t),
              danger200: Color.lerp(danger200, other.danger200, t),
              danger300: Color.lerp(danger300, other.danger300, t),
              danger400: Color.lerp(danger400, other.danger400, t),
              danger500: Color.lerp(danger500, other.danger500, t),
              danger600: Color.lerp(danger600, other.danger600, t),
            );
}
