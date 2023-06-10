import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/modules/authetication/presentation/screens/onboard/onboard_screen.dart';

class AuthenticationModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const OnboardScreen()),
      ];
}
