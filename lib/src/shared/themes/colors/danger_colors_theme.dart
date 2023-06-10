import 'package:flutter/material.dart';

class DangerColorsTheme extends ThemeExtension<DangerColorsTheme> {
  final Color? d100;
  final Color? d200;
  final Color? d300;
  final Color? d400;
  final Color? d500;
  final Color? d600;
  final Color? d700;

  DangerColorsTheme({
    required this.d100,
    required this.d200,
    required this.d300,
    required this.d400,
    required this.d500,
    required this.d600,
    required this.d700,
  });

  factory DangerColorsTheme.build() => DangerColorsTheme(
        d100: const Color(0xFFFDE5D2),
        d200: const Color(0xFFFCC6A7),
        d300: const Color(0xFFF69E7A),
        d400: const Color(0xFFED7757),
        d500: const Color(0xFFC2231A),
        d600: const Color(0xFFA21215),
        d700: const Color(0xFFE23D24),
      );

  @override
  ThemeExtension<DangerColorsTheme> copyWith({
    Color? d100,
    Color? d200,
    Color? d300,
    Color? d400,
    Color? d500,
    Color? d600,
    Color? d700,
  }) =>
      DangerColorsTheme(
        d100: d100 ?? this.d100,
        d200: d200 ?? this.d200,
        d300: d300 ?? this.d300,
        d400: d400 ?? this.d400,
        d500: d500 ?? this.d500,
        d600: d600 ?? this.d600,
        d700: d700 ?? this.d700,
      );

  @override
  ThemeExtension<DangerColorsTheme> lerp(
    covariant ThemeExtension<DangerColorsTheme>? other,
    double t,
  ) =>
      other is! DangerColorsTheme
          ? this
          : DangerColorsTheme(
              d100: Color.lerp(d100, other.d100, t),
              d200: Color.lerp(d200, other.d200, t),
              d300: Color.lerp(d300, other.d300, t),
              d400: Color.lerp(d400, other.d400, t),
              d500: Color.lerp(d500, other.d500, t),
              d600: Color.lerp(d600, other.d600, t),
              d700: Color.lerp(d700, other.d700, t),
            );
}
