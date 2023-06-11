import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/fonts/style_fonts_theme.dart';

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
        regular: fontStyle(height: 1.54, fontSize: 36.0),
        medium: fontStyle(
            height: 1.54, fontSize: 36.0, fontWeight: FontWeight.w500),
        semiBold: fontStyle(
            height: 1.54, fontSize: 36.0, fontWeight: FontWeight.w600),
        bold: fontStyle(
            height: 1.54, fontSize: 36.0, fontWeight: FontWeight.w700),
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
}
