import 'package:flutter/material.dart';

class Heading1FontsTheme extends ThemeExtension<Heading1FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Heading1FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Heading1FontsTheme.build() => Heading1FontsTheme(
        regular: _style(height: 1.54, fontSize: 36.0),
        medium:
            _style(height: 1.54, fontSize: 36.0, fontWeight: FontWeight.w500),
        semiBold:
            _style(height: 1.54, fontSize: 36.0, fontWeight: FontWeight.w600),
        bold: _style(height: 1.54, fontSize: 36.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Heading1FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Heading1FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Heading1FontsTheme> lerp(
    covariant ThemeExtension<Heading1FontsTheme>? other,
    double t,
  ) =>
      other is! Heading1FontsTheme
          ? this
          : Heading1FontsTheme(
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
