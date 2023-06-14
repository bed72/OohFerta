import 'package:oohferta/src/modules/core/data/value_objects/value_object.dart';

class EmailVO extends ValueObject<String> {
  late final RegExp _regex;

  EmailVO(super.value) {
    _regex = RegExp(r'^[a-zA-Z\d+_.-]+@[a-zA-Z\d.-]+\.[a-zA-z]{2,3}$');
  }

  @override
  String? validator([String? data]) {
    if (data == null) return 'Preencha um e-mail válido.';

    return _regex.hasMatch(data) ? null : 'Este e-mail não é válido.';
  }
}
