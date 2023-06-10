import 'package:flutter/material.dart';

class PrimaryColorsTheme extends ThemeExtension<PrimaryColorsTheme> {
  final Color? p100;
  final Color? p200;
  final Color? p300;
  final Color? p400;
  final Color? p500;
  final Color? p600;
  final Color? p700;

  PrimaryColorsTheme({
    required this.p100,
    required this.p200,
    required this.p300,
    required this.p400,
    required this.p500,
    required this.p600,
    required this.p700,
  });

  factory PrimaryColorsTheme.build() => PrimaryColorsTheme(
        p100: const Color(0xFFD2FAD4),
        p200: const Color(0xFFA7F5B3),
        p300: const Color(0xFF77E392),
        p400: const Color(0xFF51C87B),
        p500: const Color(0xFF188D59),
        p600: const Color(0xFF117653),
        p700: const Color(0xFF22A45D),
      );

  @override
  ThemeExtension<PrimaryColorsTheme> copyWith({
    Color? p100,
    Color? p200,
    Color? p300,
    Color? p400,
    Color? p500,
    Color? p600,
    Color? p700,
  }) =>
      PrimaryColorsTheme(
        p100: p100 ?? this.p100,
        p200: p200 ?? this.p200,
        p300: p300 ?? this.p300,
        p400: p400 ?? this.p400,
        p500: p500 ?? this.p500,
        p600: p600 ?? this.p600,
        p700: p700 ?? this.p700,
      );

  @override
  ThemeExtension<PrimaryColorsTheme> lerp(
    covariant ThemeExtension<PrimaryColorsTheme>? other,
    double t,
  ) =>
      other is! PrimaryColorsTheme
          ? this
          : PrimaryColorsTheme(
              p100: Color.lerp(p100, other.p100, t),
              p200: Color.lerp(p200, other.p200, t),
              p300: Color.lerp(p300, other.p300, t),
              p400: Color.lerp(p400, other.p400, t),
              p500: Color.lerp(p500, other.p500, t),
              p600: Color.lerp(p600, other.p600, t),
              p700: Color.lerp(p700, other.p700, t),
            );
}
