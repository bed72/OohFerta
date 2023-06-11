import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/modules/authetication/presentation/screens/onboard/onboard_screen.dart';
import 'package:oohferta/src/modules/authetication/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:oohferta/src/modules/authetication/presentation/screens/sign_up/sign_up_screen.dart';

class AuthenticationModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const OnboardScreen()),
        ChildRoute(
          '/sign_up',
          child: (context, args) => const SignUpScreen(),
          transition: TransitionType.rightToLeft,
        ),
        ChildRoute(
          '/sign_in',
          child: (context, args) => const SignInScreen(),
          transition: TransitionType.rightToLeft,
        ),
      ];
}
