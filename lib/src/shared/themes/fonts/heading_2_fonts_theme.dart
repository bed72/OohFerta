import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/fonts/style_fonts_theme.dart';

class Heading2FontsTheme extends ThemeExtension<Heading2FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Heading2FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Heading2FontsTheme.build() => Heading2FontsTheme(
        regular: fontStyle(height: 1.48, fontSize: 32.0),
        medium: fontStyle(
            height: 1.48, fontSize: 32.0, fontWeight: FontWeight.w500),
        semiBold: fontStyle(
            height: 1.48, fontSize: 32.0, fontWeight: FontWeight.w600),
        bold: fontStyle(
            height: 1.48, fontSize: 32.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Heading2FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Heading2FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Heading2FontsTheme> lerp(
    covariant ThemeExtension<Heading2FontsTheme>? other,
    double t,
  ) =>
      other is! Heading2FontsTheme
          ? this
          : Heading2FontsTheme(
              regular: TextStyle.lerp(regular, other.regular, t),
              medium: TextStyle.lerp(medium, other.medium, t),
              semiBold: TextStyle.lerp(semiBold, other.semiBold, t),
              bold: TextStyle.lerp(bold, other.bold, t),
            );
}
