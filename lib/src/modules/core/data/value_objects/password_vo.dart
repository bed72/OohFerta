import 'package:either_dart/either.dart';

import 'package:oohferta/src/modules/core/data/value_objects/value_object.dart';

class PasswordVO extends ValueObject<String> {
  late final RegExp _regex;

  PasswordVO(super.value) {
    _regex = RegExp(r'.*[A-Z].*');
  }

  @override
  Either<String, PasswordVO> validate() => _regex.hasMatch(value)
      ? Right(this)
      : const Left('Esta senha não é válida.');
}
