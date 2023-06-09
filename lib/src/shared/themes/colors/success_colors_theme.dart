import 'package:flutter/material.dart';

class SuccessColorsTheme extends ThemeExtension<SuccessColorsTheme> {
  final Color? success;
  final Color? success100;
  final Color? success200;
  final Color? success300;
  final Color? success400;
  final Color? success500;
  final Color? success600;

  SuccessColorsTheme({
    required this.success,
    required this.success100,
    required this.success200,
    required this.success300,
    required this.success400,
    required this.success500,
    required this.success600,
  });

  factory SuccessColorsTheme.build() => SuccessColorsTheme(
        success: const Color(0xFF43B726),
        success100: const Color(0xFFE7FBD3),
        success200: const Color(0xFFCAF7A9),
        success300: const Color(0xFFA1E97A),
        success400: const Color(0xFF78D355),
        success500: const Color(0xFF2C9D1A),
        success600: const Color(0xFF188213),
      );

  @override
  ThemeExtension<SuccessColorsTheme> copyWith({
    Color? success,
    Color? success100,
    Color? success200,
    Color? success300,
    Color? success400,
    Color? success500,
    Color? success600,
  }) =>
      SuccessColorsTheme(
        success: success ?? this.success,
        success100: success100 ?? this.success100,
        success200: success200 ?? this.success200,
        success300: success300 ?? this.success300,
        success400: success400 ?? this.success400,
        success500: success500 ?? this.success500,
        success600: success600 ?? this.success600,
      );

  @override
  ThemeExtension<SuccessColorsTheme> lerp(
    covariant ThemeExtension<SuccessColorsTheme>? other,
    double t,
  ) =>
      other is! SuccessColorsTheme
          ? this
          : SuccessColorsTheme(
              success: Color.lerp(success, other.success, t),
              success100: Color.lerp(success100, other.success100, t),
              success200: Color.lerp(success200, other.success200, t),
              success300: Color.lerp(success300, other.success300, t),
              success400: Color.lerp(success400, other.success400, t),
              success500: Color.lerp(success500, other.success500, t),
              success600: Color.lerp(success600, other.success600, t),
            );
}
