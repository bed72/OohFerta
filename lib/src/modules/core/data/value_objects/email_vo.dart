import 'package:either_dart/either.dart';

import 'package:oohferta/src/modules/core/data/value_objects/value_object.dart';

class EmailVO extends ValueObject<String> {
  late final RegExp _regex;

  EmailVO(super.value) {
    _regex = RegExp(r'^[a-zA-Z\d+_.-]+@[a-zA-Z\d.-]+\.[a-zA-z]{2,3}$');
  }

  @override
  Either<String, EmailVO> validate() => _regex.hasMatch(value)
      ? Right(this)
      : const Left('Este e-mail não é válido.');
}
