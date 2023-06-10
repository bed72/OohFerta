import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/fonts/style_fonts_theme.dart';

class Body1FontsTheme extends ThemeExtension<Body1FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Body1FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Body1FontsTheme.build() => Body1FontsTheme(
        regular: fontStyle(height: 1.24, fontSize: 16.0),
        medium: fontStyle(
            height: 1.24, fontSize: 16.0, fontWeight: FontWeight.w500),
        semiBold: fontStyle(
            height: 1.24, fontSize: 16.0, fontWeight: FontWeight.w600),
        bold: fontStyle(
            height: 1.24, fontSize: 16.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Body1FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Body1FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Body1FontsTheme> lerp(
    covariant ThemeExtension<Body1FontsTheme>? other,
    double t,
  ) =>
      other is! Body1FontsTheme
          ? this
          : Body1FontsTheme(
              regular: TextStyle.lerp(regular, other.regular, t),
              medium: TextStyle.lerp(medium, other.medium, t),
              semiBold: TextStyle.lerp(semiBold, other.semiBold, t),
              bold: TextStyle.lerp(bold, other.bold, t),
            );
}
