import 'package:flutter/material.dart';

class SuccessColorsTheme extends ThemeExtension<SuccessColorsTheme> {
  final Color? s100;
  final Color? s200;
  final Color? s300;
  final Color? s400;
  final Color? s500;
  final Color? s600;
  final Color? s700;

  SuccessColorsTheme({
    required this.s100,
    required this.s200,
    required this.s300,
    required this.s400,
    required this.s500,
    required this.s600,
    required this.s700,
  });

  factory SuccessColorsTheme.build() => SuccessColorsTheme(
        s100: const Color(0xFFE7FBD3),
        s200: const Color(0xFFCAF7A9),
        s300: const Color(0xFFA1E97A),
        s400: const Color(0xFF78D355),
        s500: const Color(0xFF2C9D1A),
        s600: const Color(0xFF188213),
        s700: const Color(0xFF43B726),
      );

  @override
  ThemeExtension<SuccessColorsTheme> copyWith({
    Color? s100,
    Color? s200,
    Color? s300,
    Color? s400,
    Color? s500,
    Color? s600,
    Color? s700,
  }) =>
      SuccessColorsTheme(
        s100: s100 ?? this.s100,
        s200: s200 ?? this.s200,
        s300: s300 ?? this.s300,
        s400: s400 ?? this.s400,
        s500: s500 ?? this.s500,
        s600: s600 ?? this.s600,
        s700: s700 ?? this.s700,
      );

  @override
  ThemeExtension<SuccessColorsTheme> lerp(
    covariant ThemeExtension<SuccessColorsTheme>? other,
    double t,
  ) =>
      other is! SuccessColorsTheme
          ? this
          : SuccessColorsTheme(
              s100: Color.lerp(s100, other.s100, t),
              s200: Color.lerp(s200, other.s200, t),
              s300: Color.lerp(s300, other.s300, t),
              s400: Color.lerp(s400, other.s400, t),
              s500: Color.lerp(s500, other.s500, t),
              s600: Color.lerp(s600, other.s600, t),
              s700: Color.lerp(s700, other.s700, t),
            );
}
