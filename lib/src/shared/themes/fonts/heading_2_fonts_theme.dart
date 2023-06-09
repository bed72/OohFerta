import 'package:flutter/material.dart';

class Heading2FontsTheme extends ThemeExtension<Heading2FontsTheme> {
  final TextStyle? headingRegular2;
  final TextStyle? headingMedium2;
  final TextStyle? headingSemiBold2;
  final TextStyle? headingBold2;

  Heading2FontsTheme({
    required this.headingRegular2,
    required this.headingMedium2,
    required this.headingSemiBold2,
    required this.headingBold2,
  });

  factory Heading2FontsTheme.build() => Heading2FontsTheme(
        headingRegular2: _style(height: 4.8, fontSize: 32.0),
        headingMedium2:
            _style(height: 4.8, fontSize: 32.0, fontWeight: FontWeight.w500),
        headingSemiBold2:
            _style(height: 4.8, fontSize: 32.0, fontWeight: FontWeight.w500),
        headingBold2:
            _style(height: 4.8, fontSize: 32.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Heading2FontsTheme> copyWith({
    TextStyle? headingRegular2,
    TextStyle? headingMedium2,
    TextStyle? headingSemiBold2,
    TextStyle? headingBold2,
  }) =>
      Heading2FontsTheme(
        headingRegular2: headingRegular2 ?? this.headingRegular2,
        headingMedium2: headingMedium2 ?? this.headingMedium2,
        headingSemiBold2: headingSemiBold2 ?? this.headingSemiBold2,
        headingBold2: headingBold2 ?? this.headingBold2,
      );

  @override
  ThemeExtension<Heading2FontsTheme> lerp(
    covariant ThemeExtension<Heading2FontsTheme>? other,
    double t,
  ) =>
      other is! Heading2FontsTheme
          ? this
          : Heading2FontsTheme(
              headingRegular2:
                  TextStyle.lerp(headingRegular2, other.headingRegular2, t),
              headingMedium2:
                  TextStyle.lerp(headingMedium2, other.headingMedium2, t),
              headingSemiBold2:
                  TextStyle.lerp(headingSemiBold2, other.headingSemiBold2, t),
              headingBold2: TextStyle.lerp(headingBold2, other.headingBold2, t),
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
