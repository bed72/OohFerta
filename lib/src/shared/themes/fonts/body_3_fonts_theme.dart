import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/fonts/style_fonts_theme.dart';

class Body3FontsTheme extends ThemeExtension<Body3FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Body3FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Body3FontsTheme.build() => Body3FontsTheme(
        regular: fontStyle(height: 1.18, fontSize: 12.0),
        medium: fontStyle(
            height: 1.18, fontSize: 12.0, fontWeight: FontWeight.w500),
        semiBold: fontStyle(
            height: 1.18, fontSize: 12.0, fontWeight: FontWeight.w600),
        bold: fontStyle(
            height: 1.18, fontSize: 12.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Body3FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Body3FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Body3FontsTheme> lerp(
    covariant ThemeExtension<Body3FontsTheme>? other,
    double t,
  ) =>
      other is! Body3FontsTheme
          ? this
          : Body3FontsTheme(
              regular: TextStyle.lerp(regular, other.regular, t),
              medium: TextStyle.lerp(medium, other.medium, t),
              semiBold: TextStyle.lerp(semiBold, other.semiBold, t),
              bold: TextStyle.lerp(bold, other.bold, t),
            );
}
