import 'package:flutter/material.dart';

class PrimaryColorsTheme extends ThemeExtension<PrimaryColorsTheme> {
  final Color? primary;
  final Color? primary100;
  final Color? primary200;
  final Color? primary300;
  final Color? primary400;
  final Color? primary500;
  final Color? primary600;

  PrimaryColorsTheme({
    required this.primary,
    required this.primary100,
    required this.primary200,
    required this.primary300,
    required this.primary400,
    required this.primary500,
    required this.primary600,
  });

  factory PrimaryColorsTheme.build() => PrimaryColorsTheme(
        primary: const Color(0xFF22A45D),
        primary100: const Color(0xFFD2FAD4),
        primary200: const Color(0xFFA7F5B3),
        primary300: const Color(0xFF77E392),
        primary400: const Color(0xFF51C87B),
        primary500: const Color(0xFF188D59),
        primary600: const Color(0xFF117653),
      );

  @override
  ThemeExtension<PrimaryColorsTheme> copyWith({
    Color? primary,
    Color? primary100,
    Color? primary200,
    Color? primary300,
    Color? primary400,
    Color? primary500,
    Color? primary600,
  }) =>
      PrimaryColorsTheme(
        primary: primary ?? this.primary,
        primary100: primary100 ?? this.primary100,
        primary200: primary200 ?? this.primary200,
        primary300: primary300 ?? this.primary300,
        primary400: primary400 ?? this.primary400,
        primary500: primary500 ?? this.primary500,
        primary600: primary600 ?? this.primary600,
      );

  @override
  ThemeExtension<PrimaryColorsTheme> lerp(
    covariant ThemeExtension<PrimaryColorsTheme>? other,
    double t,
  ) =>
      other is! PrimaryColorsTheme
          ? this
          : PrimaryColorsTheme(
              primary: Color.lerp(primary, other.primary, t),
              primary100: Color.lerp(primary100, other.primary100, t),
              primary200: Color.lerp(primary200, other.primary200, t),
              primary300: Color.lerp(primary300, other.primary300, t),
              primary400: Color.lerp(primary400, other.primary400, t),
              primary500: Color.lerp(primary500, other.primary500, t),
              primary600: Color.lerp(primary600, other.primary600, t),
            );
}
