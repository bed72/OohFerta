import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/app_module.dart';
import 'package:oohferta/src/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Modular.setInitialRoute('/authentication/');

  runApp(
    ModularApp(
      debugMode: true,
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
