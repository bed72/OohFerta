import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/shared/themes/themes.dart';
import 'package:oohferta/src/shared/localization/localization.dart';
import 'package:oohferta/src/shared/extensions/context_extension.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Themes.light,
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      supportedLocales: supportedLocales,
      routerDelegate: Modular.routerDelegate,
      localizationsDelegates: localizationsDelegates,
      routeInformationParser: Modular.routeInformationParser,
      onGenerateTitle: (BuildContext context) => context.localize.appTitle,
    );
  }
}
