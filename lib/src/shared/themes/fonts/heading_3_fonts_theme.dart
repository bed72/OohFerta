import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/fonts/style_fonts_theme.dart';

class Heading3FontsTheme extends ThemeExtension<Heading3FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Heading3FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Heading3FontsTheme.build() => Heading3FontsTheme(
        regular: fontStyle(height: 1.42, fontSize: 28.0),
        medium: fontStyle(
            height: 1.42, fontSize: 28.0, fontWeight: FontWeight.w500),
        semiBold: fontStyle(
            height: 1.42, fontSize: 28.0, fontWeight: FontWeight.w600),
        bold: fontStyle(
            height: 1.42, fontSize: 28.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Heading3FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Heading3FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Heading3FontsTheme> lerp(
    covariant ThemeExtension<Heading3FontsTheme>? other,
    double t,
  ) =>
      other is! Heading3FontsTheme
          ? this
          : Heading3FontsTheme(
              regular: TextStyle.lerp(regular, other.regular, t),
              medium: TextStyle.lerp(medium, other.medium, t),
              semiBold: TextStyle.lerp(semiBold, other.semiBold, t),
              bold: TextStyle.lerp(bold, other.bold, t),
            );

  static TextStyle _style({
    double height = 1.8,
    double fontSize = 12.0,
    double letterSpacing = 0.22,
    Color color = const Color(0XFF010F07),
    FontWeight fontWeight = FontWeight.w400,
  }) =>
      TextStyle(
        color: color,
        height: height,
        fontSize: fontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
      );
}
