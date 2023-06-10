import 'package:flutter/material.dart';

class GreyColorsTheme extends ThemeExtension<GreyColorsTheme> {
  final Color? g100;
  final Color? g200;
  final Color? g300;
  final Color? g400;
  final Color? g500;
  final Color? g600;
  final Color? g700;

  GreyColorsTheme({
    required this.g100,
    required this.g200,
    required this.g300,
    required this.g400,
    required this.g500,
    required this.g600,
    required this.g700,
  });

  factory GreyColorsTheme.build() => GreyColorsTheme(
        g100: const Color(0xFFFFFFFF),
        g200: const Color(0xFFF6F8FC),
        g300: const Color(0xFFADADAD),
        g400: const Color(0xFF757575),
        g500: const Color(0xFF2F3233),
        g600: const Color(0xFF1F2123),
        g700: const Color(0xFF010F07),
      );

  @override
  ThemeExtension<GreyColorsTheme> copyWith({
    Color? g100,
    Color? g200,
    Color? g300,
    Color? g400,
    Color? g500,
    Color? g600,
    Color? g700,
  }) =>
      GreyColorsTheme(
        g100: g100 ?? this.g100,
        g200: g200 ?? this.g200,
        g300: g300 ?? this.g300,
        g400: g400 ?? this.g400,
        g500: g500 ?? this.g500,
        g600: g600 ?? this.g600,
        g700: g700 ?? this.g700,
      );

  @override
  ThemeExtension<GreyColorsTheme> lerp(
    covariant ThemeExtension<GreyColorsTheme>? other,
    double t,
  ) =>
      other is! GreyColorsTheme
          ? this
          : GreyColorsTheme(
              g100: Color.lerp(g100, other.g100, t),
              g200: Color.lerp(g200, other.g200, t),
              g300: Color.lerp(g300, other.g300, t),
              g400: Color.lerp(g400, other.g400, t),
              g500: Color.lerp(g500, other.g500, t),
              g600: Color.lerp(g600, other.g600, t),
              g700: Color.lerp(g700, other.g700, t),
            );
}
