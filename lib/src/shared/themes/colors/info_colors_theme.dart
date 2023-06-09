import 'package:flutter/material.dart';

class InfoColorsTheme extends ThemeExtension<InfoColorsTheme> {
  final Color? info;
  final Color? info100;
  final Color? info200;
  final Color? info300;
  final Color? info400;
  final Color? info500;
  final Color? info600;

  InfoColorsTheme({
    required this.info,
    required this.info100,
    required this.info200,
    required this.info300,
    required this.info400,
    required this.info500,
    required this.info600,
  });

  factory InfoColorsTheme.build() => InfoColorsTheme(
        info: const Color(0xFF186DDD),
        info100: const Color(0xFFD0EBFD),
        info200: const Color(0xFFA1D4FB),
        info300: const Color(0xFF71B5F4),
        info400: const Color(0xFF4D98EA),
        info500: const Color(0xFF1154BE),
        info600: const Color(0xFF0C3E9F),
      );

  @override
  ThemeExtension<InfoColorsTheme> copyWith({
    Color? info,
    Color? info100,
    Color? info200,
    Color? info300,
    Color? info400,
    Color? info500,
    Color? info600,
  }) =>
      InfoColorsTheme(
        info: info ?? this.info,
        info100: info100 ?? this.info100,
        info200: info200 ?? this.info200,
        info300: info300 ?? this.info300,
        info400: info400 ?? this.info400,
        info500: info500 ?? this.info500,
        info600: info600 ?? this.info600,
      );

  @override
  ThemeExtension<InfoColorsTheme> lerp(
    covariant ThemeExtension<InfoColorsTheme>? other,
    double t,
  ) =>
      other is! InfoColorsTheme
          ? this
          : InfoColorsTheme(
              info: Color.lerp(info, other.info, t),
              info100: Color.lerp(info100, other.info100, t),
              info200: Color.lerp(info200, other.info200, t),
              info300: Color.lerp(info300, other.info300, t),
              info400: Color.lerp(info400, other.info400, t),
              info500: Color.lerp(info500, other.info500, t),
              info600: Color.lerp(info600, other.info600, t),
            );
}
