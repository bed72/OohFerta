import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizedBuildContext on BuildContext {
  TextTheme get fonts => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
  AppLocalizations get localize => AppLocalizations.of(this)!;
}
