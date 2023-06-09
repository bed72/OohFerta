import 'package:flutter/material.dart';

class Heading3FontsTheme extends ThemeExtension<Heading3FontsTheme> {
  final TextStyle? headingRegular3;
  final TextStyle? headingMedium3;
  final TextStyle? headingSemiBold3;
  final TextStyle? headingBold3;

  Heading3FontsTheme({
    required this.headingRegular3,
    required this.headingMedium3,
    required this.headingSemiBold3,
    required this.headingBold3,
  });

  factory Heading3FontsTheme.build() => Heading3FontsTheme(
        headingRegular3: _style(height: 4.2, fontSize: 28.0),
        headingMedium3:
            _style(height: 4.2, fontSize: 28.0, fontWeight: FontWeight.w500),
        headingSemiBold3:
            _style(height: 4.2, fontSize: 28.0, fontWeight: FontWeight.w500),
        headingBold3:
            _style(height: 4.2, fontSize: 28.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Heading3FontsTheme> copyWith({
    TextStyle? headingRegular3,
    TextStyle? headingMedium3,
    TextStyle? headingSemiBold3,
    TextStyle? headingBold3,
  }) =>
      Heading3FontsTheme(
        headingRegular3: headingRegular3 ?? this.headingRegular3,
        headingMedium3: headingMedium3 ?? this.headingMedium3,
        headingSemiBold3: headingSemiBold3 ?? this.headingSemiBold3,
        headingBold3: headingBold3 ?? this.headingBold3,
      );

  @override
  ThemeExtension<Heading3FontsTheme> lerp(
    covariant ThemeExtension<Heading3FontsTheme>? other,
    double t,
  ) =>
      other is! Heading3FontsTheme
          ? this
          : Heading3FontsTheme(
              headingRegular3:
                  TextStyle.lerp(headingRegular3, other.headingRegular3, t),
              headingMedium3:
                  TextStyle.lerp(headingMedium3, other.headingMedium3, t),
              headingSemiBold3:
                  TextStyle.lerp(headingSemiBold3, other.headingSemiBold3, t),
              headingBold3: TextStyle.lerp(headingBold3, other.headingBold3, t),
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
