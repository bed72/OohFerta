import 'package:flutter/material.dart';

TextStyle fontStyle({
  double height = 1.18,
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
      fontFamily: 'Poppins',
    );
