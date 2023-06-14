import 'package:oohferta/src/modules/core/data/value_objects/value_object.dart';

class PasswordVO extends ValueObject<String> {
  late final RegExp _regex;

  PasswordVO(super.value) {
    _regex = RegExp(r'.*[A-Z].*');
  }

  @override
  String? validator([String? data]) {
    if (data == null) return 'Preencha uma senha válida.';

    return _regex.hasMatch(data) ? null : 'Esta senha não é válida.';
  }
}
