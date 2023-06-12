import 'package:either_dart/either.dart';

import 'package:oohferta/src/modules/core/data/value_objects/value_object.dart';

class NameVO extends ValueObject<String> {
  late final RegExp _regex;

  NameVO(super.value) {
    _regex = RegExp(r'^([^\p{N}\p{S}\p{C}\p{P}]{2,20})$');
  }

  @override
  Either<String, NameVO> validate() => _regex.hasMatch(value)
      ? Right(this)
      : const Left('Este nome não é válido.');
}
