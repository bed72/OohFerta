import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/modules/core/domain/use_cases/debounce/debounce_use_case.dart';

class CoreModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.lazySingleton<DebouceUseCase>(
          (i) => DebouceUseCaseImpl(milliseconds: 200),
          export: true,
        ),
      ];
}
