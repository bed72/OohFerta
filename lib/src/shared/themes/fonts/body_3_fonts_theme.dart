import 'package:flutter/material.dart';

class Body3FontsTheme extends ThemeExtension<Body3FontsTheme> {
  final TextStyle? bodyRegular3;
  final TextStyle? bodyMedium3;
  final TextStyle? bodySemiBold3;
  final TextStyle? bodyBold3;

  Body3FontsTheme({
    required this.bodyRegular3,
    required this.bodyMedium3,
    required this.bodySemiBold3,
    required this.bodyBold3,
  });

  factory Body3FontsTheme.build() => Body3FontsTheme(
        bodyRegular3: _style(height: 1.8, fontSize: 12.0),
        bodyMedium3:
            _style(height: 1.8, fontSize: 12.0, fontWeight: FontWeight.w500),
        bodySemiBold3:
            _style(height: 1.8, fontSize: 12.0, fontWeight: FontWeight.w500),
        bodyBold3:
            _style(height: 1.8, fontSize: 12.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Body3FontsTheme> copyWith({
    TextStyle? bodyRegular3,
    TextStyle? bodyMedium3,
    TextStyle? bodySemiBold3,
    TextStyle? bodyBold3,
  }) =>
      Body3FontsTheme(
        bodyRegular3: bodyRegular3 ?? this.bodyRegular3,
        bodyMedium3: bodyMedium3 ?? this.bodyMedium3,
        bodySemiBold3: bodySemiBold3 ?? this.bodySemiBold3,
        bodyBold3: bodyBold3 ?? this.bodyBold3,
      );

  @override
  ThemeExtension<Body3FontsTheme> lerp(
    covariant ThemeExtension<Body3FontsTheme>? other,
    double t,
  ) =>
      other is! Body3FontsTheme
          ? this
          : Body3FontsTheme(
              bodyRegular3: TextStyle.lerp(bodyRegular3, other.bodyRegular3, t),
              bodyMedium3: TextStyle.lerp(bodyMedium3, other.bodyMedium3, t),
              bodySemiBold3:
                  TextStyle.lerp(bodySemiBold3, other.bodySemiBold3, t),
              bodyBold3: TextStyle.lerp(bodyBold3, other.bodyBold3, t),
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
