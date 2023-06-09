import 'package:flutter/material.dart';

class Heading1FontsTheme extends ThemeExtension<Heading1FontsTheme> {
  final TextStyle? headingRegular1;
  final TextStyle? headingMedium1;
  final TextStyle? headingSemiBold1;
  final TextStyle? headingBold1;

  Heading1FontsTheme({
    required this.headingRegular1,
    required this.headingMedium1,
    required this.headingSemiBold1,
    required this.headingBold1,
  });

  factory Heading1FontsTheme.build() => Heading1FontsTheme(
        headingRegular1: _style(height: 5.4, fontSize: 36.0),
        headingMedium1:
            _style(height: 5.4, fontSize: 36.0, fontWeight: FontWeight.w500),
        headingSemiBold1:
            _style(height: 5.4, fontSize: 36.0, fontWeight: FontWeight.w500),
        headingBold1:
            _style(height: 5.4, fontSize: 36.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Heading1FontsTheme> copyWith({
    TextStyle? headingRegular1,
    TextStyle? headingMedium1,
    TextStyle? headingSemiBold1,
    TextStyle? headingBold1,
  }) =>
      Heading1FontsTheme(
        headingRegular1: headingRegular1 ?? this.headingRegular1,
        headingMedium1: headingMedium1 ?? this.headingMedium1,
        headingSemiBold1: headingSemiBold1 ?? this.headingSemiBold1,
        headingBold1: headingBold1 ?? this.headingBold1,
      );

  @override
  ThemeExtension<Heading1FontsTheme> lerp(
    covariant ThemeExtension<Heading1FontsTheme>? other,
    double t,
  ) =>
      other is! Heading1FontsTheme
          ? this
          : Heading1FontsTheme(
              headingRegular1:
                  TextStyle.lerp(headingRegular1, other.headingRegular1, t),
              headingMedium1:
                  TextStyle.lerp(headingMedium1, other.headingMedium1, t),
              headingSemiBold1:
                  TextStyle.lerp(headingSemiBold1, other.headingSemiBold1, t),
              headingBold1: TextStyle.lerp(headingBold1, other.headingBold1, t),
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
