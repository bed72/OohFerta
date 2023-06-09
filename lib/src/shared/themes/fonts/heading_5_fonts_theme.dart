import 'package:flutter/material.dart';

class Heading5FontsTheme extends ThemeExtension<Heading5FontsTheme> {
  final TextStyle? headingRegular5;
  final TextStyle? headingMedium5;
  final TextStyle? headingSemiBold5;
  final TextStyle? headingBold5;

  Heading5FontsTheme({
    required this.headingRegular5,
    required this.headingMedium5,
    required this.headingSemiBold5,
    required this.headingBold5,
  });

  factory Heading5FontsTheme.build() => Heading5FontsTheme(
        headingRegular5: _style(height: 3.0, fontSize: 20.0),
        headingMedium5:
            _style(height: 3.0, fontSize: 20.0, fontWeight: FontWeight.w500),
        headingSemiBold5:
            _style(height: 3.0, fontSize: 20.0, fontWeight: FontWeight.w500),
        headingBold5:
            _style(height: 3.0, fontSize: 20.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Heading5FontsTheme> copyWith({
    TextStyle? headingRegular5,
    TextStyle? headingMedium5,
    TextStyle? headingSemiBold5,
    TextStyle? headingBold5,
  }) =>
      Heading5FontsTheme(
        headingRegular5: headingRegular5 ?? this.headingRegular5,
        headingMedium5: headingMedium5 ?? this.headingMedium5,
        headingSemiBold5: headingSemiBold5 ?? this.headingSemiBold5,
        headingBold5: headingBold5 ?? this.headingBold5,
      );

  @override
  ThemeExtension<Heading5FontsTheme> lerp(
    covariant ThemeExtension<Heading5FontsTheme>? other,
    double t,
  ) =>
      other is! Heading5FontsTheme
          ? this
          : Heading5FontsTheme(
              headingRegular5:
                  TextStyle.lerp(headingRegular5, other.headingRegular5, t),
              headingMedium5:
                  TextStyle.lerp(headingMedium5, other.headingMedium5, t),
              headingSemiBold5:
                  TextStyle.lerp(headingSemiBold5, other.headingSemiBold5, t),
              headingBold5: TextStyle.lerp(headingBold5, other.headingBold5, t),
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
