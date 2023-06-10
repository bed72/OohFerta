import 'package:flutter/material.dart';

class InfoColorsTheme extends ThemeExtension<InfoColorsTheme> {
  final Color? i100;
  final Color? i200;
  final Color? i300;
  final Color? i400;
  final Color? i500;
  final Color? i600;
  final Color? i700;

  InfoColorsTheme({
    required this.i100,
    required this.i200,
    required this.i300,
    required this.i400,
    required this.i500,
    required this.i600,
    required this.i700,
  });

  factory InfoColorsTheme.build() => InfoColorsTheme(
        i100: const Color(0xFFD0EBFD),
        i200: const Color(0xFFA1D4FB),
        i300: const Color(0xFF71B5F4),
        i400: const Color(0xFF4D98EA),
        i500: const Color(0xFF1154BE),
        i600: const Color(0xFF0C3E9F),
        i700: const Color(0xFF186DDD),
      );

  @override
  ThemeExtension<InfoColorsTheme> copyWith({
    Color? i100,
    Color? i200,
    Color? i300,
    Color? i400,
    Color? i500,
    Color? i600,
    Color? i700,
  }) =>
      InfoColorsTheme(
        i100: i100 ?? this.i100,
        i200: i200 ?? this.i200,
        i300: i300 ?? this.i300,
        i400: i400 ?? this.i400,
        i500: i500 ?? this.i500,
        i600: i600 ?? this.i600,
        i700: i700 ?? this.i700,
      );

  @override
  ThemeExtension<InfoColorsTheme> lerp(
    covariant ThemeExtension<InfoColorsTheme>? other,
    double t,
  ) =>
      other is! InfoColorsTheme
          ? this
          : InfoColorsTheme(
              i100: Color.lerp(i100, other.i100, t),
              i200: Color.lerp(i200, other.i200, t),
              i300: Color.lerp(i300, other.i300, t),
              i400: Color.lerp(i400, other.i400, t),
              i500: Color.lerp(i500, other.i500, t),
              i600: Color.lerp(i600, other.i600, t),
              i700: Color.lerp(i700, other.i700, t),
            );
}
