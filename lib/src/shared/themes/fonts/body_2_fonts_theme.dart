import 'package:flutter/material.dart';

class Body2FontsTheme extends ThemeExtension<Body2FontsTheme> {
  final TextStyle? bodyRegular2;
  final TextStyle? bodyMedium2;
  final TextStyle? bodySemiBold2;
  final TextStyle? bodyBold2;

  Body2FontsTheme({
    required this.bodyRegular2,
    required this.bodyMedium2,
    required this.bodySemiBold2,
    required this.bodyBold2,
  });

  factory Body2FontsTheme.build() => Body2FontsTheme(
        bodyRegular2: _style(height: 2.1, fontSize: 14.0),
        bodyMedium2:
            _style(height: 2.1, fontSize: 14.0, fontWeight: FontWeight.w500),
        bodySemiBold2:
            _style(height: 2.1, fontSize: 14.0, fontWeight: FontWeight.w500),
        bodyBold2:
            _style(height: 2.1, fontSize: 14.0, fontWeight: FontWeight.w600),
      );

  @override
  ThemeExtension<Body2FontsTheme> copyWith({
    TextStyle? bodyRegular2,
    TextStyle? bodyMedium2,
    TextStyle? bodySemiBold2,
    TextStyle? bodyBold2,
  }) =>
      Body2FontsTheme(
        bodyRegular2: bodyRegular2 ?? this.bodyRegular2,
        bodyMedium2: bodyMedium2 ?? this.bodyMedium2,
        bodySemiBold2: bodySemiBold2 ?? this.bodySemiBold2,
        bodyBold2: bodyBold2 ?? this.bodyBold2,
      );

  @override
  ThemeExtension<Body2FontsTheme> lerp(
    covariant ThemeExtension<Body2FontsTheme>? other,
    double t,
  ) =>
      other is! Body2FontsTheme
          ? this
          : Body2FontsTheme(
              bodyRegular2: TextStyle.lerp(bodyRegular2, other.bodyRegular2, t),
              bodyMedium2: TextStyle.lerp(bodyMedium2, other.bodyMedium2, t),
              bodySemiBold2:
                  TextStyle.lerp(bodySemiBold2, other.bodySemiBold2, t),
              bodyBold2: TextStyle.lerp(bodyBold2, other.bodyBold2, t),
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
