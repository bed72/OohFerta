import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';

import 'package:oohferta/src/modules/core/data/value_objects/name_vo.dart';
import 'package:oohferta/src/modules/core/data/value_objects/email_vo.dart';
import 'package:oohferta/src/modules/core/data/value_objects/password_vo.dart';

import 'package:oohferta/src/modules/core/data/models/request/resquest_model.dart';

final class SignUpRequestModel extends Equatable implements RequestModel {
  final NameVO name;
  final EmailVO email;
  final PasswordVO password;

  const SignUpRequestModel({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [name, email, password];

  @override
  Either<String, SignUpRequestModel> validate() =>
      fieldsAreValid() ? Right(this) : const Left('Dados inválidos.');

  @override
  bool fieldsAreValid() =>
      name.validate().isRight &&
      email.validate().isRight &&
      password.validate().isRight;
}
