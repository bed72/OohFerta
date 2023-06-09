import 'package:oohferta/src/modules/core/data/value_objects/value_object.dart';

class NameVO extends ValueObject<String> {
  late final RegExp _regex;

  NameVO(super.value) {
    _regex = RegExp(r'^([^\p{N}\p{S}\p{C}\p{P}]{2,20})$');
  }

  @override
  String? validator([String? data]) {
    if (data == null) return 'Preencha um nome válido.';

    return _regex.hasMatch(data) ? null : 'Este nome não é válido.';
  }
}
