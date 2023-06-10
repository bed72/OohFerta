import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/fonts/style_fonts_theme.dart';

class Body2FontsTheme extends ThemeExtension<Body2FontsTheme> {
  final TextStyle? regular;
  final TextStyle? medium;
  final TextStyle? semiBold;
  final TextStyle? bold;

  Body2FontsTheme({
    required this.regular,
    required this.medium,
    required this.semiBold,
    required this.bold,
  });

  factory Body2FontsTheme.build() => Body2FontsTheme(
        regular: fontStyle(height: 1.21, fontSize: 14.0),
        medium: fontStyle(
            height: 1.21, fontSize: 14.0, fontWeight: FontWeight.w500),
        semiBold: fontStyle(
            height: 1.21, fontSize: 14.0, fontWeight: FontWeight.w600),
        bold: fontStyle(
            height: 1.21, fontSize: 14.0, fontWeight: FontWeight.w700),
      );

  @override
  ThemeExtension<Body2FontsTheme> copyWith({
    TextStyle? regular,
    TextStyle? medium,
    TextStyle? semiBold,
    TextStyle? bold,
  }) =>
      Body2FontsTheme(
        regular: regular ?? this.regular,
        medium: medium ?? this.medium,
        semiBold: semiBold ?? this.semiBold,
        bold: bold ?? this.bold,
      );

  @override
  ThemeExtension<Body2FontsTheme> lerp(
    covariant ThemeExtension<Body2FontsTheme>? other,
    double t,
  ) =>
      other is! Body2FontsTheme
          ? this
          : Body2FontsTheme(
              regular: TextStyle.lerp(regular, other.regular, t),
              medium: TextStyle.lerp(medium, other.medium, t),
              semiBold: TextStyle.lerp(semiBold, other.semiBold, t),
              bold: TextStyle.lerp(bold, other.bold, t),
            );
}
