import 'package:flutter/material.dart';

class Heading4FontsTheme extends ThemeExtension<Heading4FontsTheme> {
  final TextStyle? headingRegular4;
  final TextStyle? headingMedium4;
  final TextStyle? headingSemiBold4;
  final TextStyle? headingBold4;

  Heading4FontsTheme({
    required this.headingRegular4,
    required this.headingMedium4,
    required this.headingSemiBold4,
    required this.headingBold4,
  });

  factory Heading4FontsTheme.build() => Heading4FontsTheme(
        headingRegular4: _style(height: 3.6, fontSize: 24.0),
        headingMedium4:
            _style(height: 3.6, fontSize: 24.0, fontWeight: FontWeight.w500),
        headingSemiBold4:
            _style(height: 3.6, fontSize: 24.0, fontWeight: FontWeight.w500),
        headingBold4:
            _style(height: 3.6, fontSize: 24.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Heading4FontsTheme> copyWith({
    TextStyle? headingRegular4,
    TextStyle? headingMedium4,
    TextStyle? headingSemiBold4,
    TextStyle? headingBold4,
  }) =>
      Heading4FontsTheme(
        headingRegular4: headingRegular4 ?? this.headingRegular4,
        headingMedium4: headingMedium4 ?? this.headingMedium4,
        headingSemiBold4: headingSemiBold4 ?? this.headingSemiBold4,
        headingBold4: headingBold4 ?? this.headingBold4,
      );

  @override
  ThemeExtension<Heading4FontsTheme> lerp(
    covariant ThemeExtension<Heading4FontsTheme>? other,
    double t,
  ) =>
      other is! Heading4FontsTheme
          ? this
          : Heading4FontsTheme(
              headingRegular4:
                  TextStyle.lerp(headingRegular4, other.headingRegular4, t),
              headingMedium4:
                  TextStyle.lerp(headingMedium4, other.headingMedium4, t),
              headingSemiBold4:
                  TextStyle.lerp(headingSemiBold4, other.headingSemiBold4, t),
              headingBold4: TextStyle.lerp(headingBold4, other.headingBold4, t),
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
