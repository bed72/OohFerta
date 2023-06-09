import 'package:flutter/material.dart';

class GreyColorsTheme extends ThemeExtension<GreyColorsTheme> {
  final Color? grey;
  final Color? grey100;
  final Color? grey200;
  final Color? grey300;
  final Color? grey400;
  final Color? grey500;
  final Color? grey600;

  GreyColorsTheme({
    required this.grey,
    required this.grey100,
    required this.grey200,
    required this.grey300,
    required this.grey400,
    required this.grey500,
    required this.grey600,
  });

  factory GreyColorsTheme.build() => GreyColorsTheme(
        grey: const Color(0xFF010F07),
        grey100: const Color(0xFFFFFFFF),
        grey200: const Color(0xFFF6F8FC),
        grey300: const Color(0xFFADADAD),
        grey400: const Color(0xFF757575),
        grey500: const Color(0xFF2F3233),
        grey600: const Color(0xFF1F2123),
      );

  @override
  ThemeExtension<GreyColorsTheme> copyWith({
    Color? grey,
    Color? grey100,
    Color? grey200,
    Color? grey300,
    Color? grey400,
    Color? grey500,
    Color? grey600,
  }) =>
      GreyColorsTheme(
        grey: grey ?? this.grey,
        grey100: grey100 ?? this.grey100,
        grey200: grey200 ?? this.grey200,
        grey300: grey300 ?? this.grey300,
        grey400: grey400 ?? this.grey400,
        grey500: grey500 ?? this.grey500,
        grey600: grey600 ?? this.grey600,
      );

  @override
  ThemeExtension<GreyColorsTheme> lerp(
    covariant ThemeExtension<GreyColorsTheme>? other,
    double t,
  ) =>
      other is! GreyColorsTheme
          ? this
          : GreyColorsTheme(
              grey: Color.lerp(grey, other.grey, t),
              grey100: Color.lerp(grey100, other.grey100, t),
              grey200: Color.lerp(grey200, other.grey200, t),
              grey300: Color.lerp(grey300, other.grey300, t),
              grey400: Color.lerp(grey400, other.grey400, t),
              grey500: Color.lerp(grey500, other.grey500, t),
              grey600: Color.lerp(grey600, other.grey600, t),
            );
}
