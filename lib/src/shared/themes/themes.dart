import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/themes/colors/grey_colors_theme.dart';
import 'package:oohferta/src/shared/themes/colors/info_colors_theme.dart';
import 'package:oohferta/src/shared/themes/colors/danger_colors_theme.dart';
import 'package:oohferta/src/shared/themes/colors/primary_colors_theme.dart';
import 'package:oohferta/src/shared/themes/colors/success_colors_theme.dart';
import 'package:oohferta/src/shared/themes/colors/warning_colors_theme.dart';

import 'package:oohferta/src/shared/themes/fonts/body_1_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/body_2_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/body_3_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/heading_1_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/heading_2_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/heading_3_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/heading_4_fonts_theme.dart';
import 'package:oohferta/src/shared/themes/fonts/heading_5_fonts_theme.dart';

class Themes {
  static get light => ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        extensions: <ThemeExtension<dynamic>>[
          // Colors
          GreyColorsTheme.build(),
          InfoColorsTheme.build(),
          DangerColorsTheme.build(),
          PrimaryColorsTheme.build(),
          SuccessColorsTheme.build(),
          WarningColorsTheme.build(),

          // Fonts
          Body1FontsTheme.build(),
          Body2FontsTheme.build(),
          Body3FontsTheme.build(),
          Heading1FontsTheme.build(),
          Heading2FontsTheme.build(),
          Heading3FontsTheme.build(),
          Heading4FontsTheme.build(),
          Heading5FontsTheme.build(),
        ],
      );
}
