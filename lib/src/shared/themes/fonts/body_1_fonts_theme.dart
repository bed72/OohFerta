import 'package:flutter/material.dart';

class Body1FontsTheme extends ThemeExtension<Body1FontsTheme> {
  final TextStyle? bodyRegular1;
  final TextStyle? bodyMedium1;
  final TextStyle? bodySemiBold1;
  final TextStyle? bodyBold1;

  Body1FontsTheme({
    required this.bodyRegular1,
    required this.bodyMedium1,
    required this.bodySemiBold1,
    required this.bodyBold1,
  });

  factory Body1FontsTheme.build() => Body1FontsTheme(
        bodyRegular1: _style(height: 2.4, fontSize: 16.0),
        bodyMedium1:
            _style(height: 2.4, fontSize: 16.0, fontWeight: FontWeight.w500),
        bodySemiBold1:
            _style(height: 2.4, fontSize: 16.0, fontWeight: FontWeight.w500),
        bodyBold1:
            _style(height: 2.4, fontSize: 16.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Body1FontsTheme> copyWith({
    TextStyle? bodyRegular1,
    TextStyle? bodyMedium1,
    TextStyle? bodySemiBold1,
    TextStyle? bodyBold1,
  }) =>
      Body1FontsTheme(
        bodyRegular1: bodyRegular1 ?? this.bodyRegular1,
        bodyMedium1: bodyMedium1 ?? this.bodyMedium1,
        bodySemiBold1: bodySemiBold1 ?? this.bodySemiBold1,
        bodyBold1: bodyBold1 ?? this.bodyBold1,
      );

  @override
  ThemeExtension<Body1FontsTheme> lerp(
    covariant ThemeExtension<Body1FontsTheme>? other,
    double t,
  ) =>
      other is! Body1FontsTheme
          ? this
          : Body1FontsTheme(
              bodyRegular1: TextStyle.lerp(bodyRegular1, other.bodyRegular1, t),
              bodyMedium1: TextStyle.lerp(bodyMedium1, other.bodyMedium1, t),
              bodySemiBold1:
                  TextStyle.lerp(bodySemiBold1, other.bodySemiBold1, t),
              bodyBold1: TextStyle.lerp(bodyBold1, other.bodyBold1, t),
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
