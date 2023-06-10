import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/modules/authetication/authetication_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/authentication', module: AuthenticationModule()),
      ];
}
