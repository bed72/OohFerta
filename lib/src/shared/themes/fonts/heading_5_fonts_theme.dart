import 'package:flutter/material.dart';

class Heading5FontsTheme extends ThemeExtension<Heading5FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Heading5FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Heading5FontsTheme.build() => Heading5FontsTheme(
        regular: _style(height: 1.30, fontSize: 20.0),
        medium:
            _style(height: 1.30, fontSize: 20.0, fontWeight: FontWeight.w500),
        semiBold:
            _style(height: 1.30, fontSize: 20.0, fontWeight: FontWeight.w600),
        bold: _style(height: 1.30, fontSize: 20.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Heading5FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Heading5FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Heading5FontsTheme> lerp(
    covariant ThemeExtension<Heading5FontsTheme>? other,
    double t,
  ) =>
      other is! Heading5FontsTheme
          ? this
          : Heading5FontsTheme(
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
