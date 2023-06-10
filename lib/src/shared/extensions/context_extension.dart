import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

extension LocalizedBuildContext on BuildContext {
  // Fonts
  Body1FontsTheme get fontBody1 => Theme.of(this).extension<Body1FontsTheme>()!;
  Body2FontsTheme get fontBody2 => Theme.of(this).extension<Body2FontsTheme>()!;
  Body3FontsTheme get fontBody3 => Theme.of(this).extension<Body3FontsTheme>()!;

  Heading1FontsTheme get fontHeading1 =>
      Theme.of(this).extension<Heading1FontsTheme>()!;
  Heading2FontsTheme get fontHeading2 =>
      Theme.of(this).extension<Heading2FontsTheme>()!;
  Heading3FontsTheme get fontHeading3 =>
      Theme.of(this).extension<Heading3FontsTheme>()!;
  Heading4FontsTheme get fontHeading4 =>
      Theme.of(this).extension<Heading4FontsTheme>()!;
  Heading5FontsTheme get fontHeading5 =>
      Theme.of(this).extension<Heading5FontsTheme>()!;

  // Colors
  ColorScheme get colors => Theme.of(this).colorScheme;
  GreyColorsTheme get colorGrey => Theme.of(this).extension<GreyColorsTheme>()!;
  InfoColorsTheme get colorInfo => Theme.of(this).extension<InfoColorsTheme>()!;
  DangerColorsTheme get colorDanger =>
      Theme.of(this).extension<DangerColorsTheme>()!;
  PrimaryColorsTheme get colorPrimary =>
      Theme.of(this).extension<PrimaryColorsTheme>()!;
  SuccessColorsTheme get colorSuccess =>
      Theme.of(this).extension<SuccessColorsTheme>()!;
  WarningColorsTheme get colorWarning =>
      Theme.of(this).extension<WarningColorsTheme>()!;

  AppLocalizations get localize => AppLocalizations.of(this)!;
}
