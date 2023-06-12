import 'dart:async';

import 'package:flutter/widgets.dart';

abstract interface class DebouceUseCase {
  void call(VoidCallback action);
}

class DebouceUseCaseImpl implements DebouceUseCase {
  late Timer? _timer;
  late final int milliseconds;

  DebouceUseCaseImpl({required this.milliseconds});

  @override
  void call(VoidCallback action) {
    if (_timer?.isActive ?? false) _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
