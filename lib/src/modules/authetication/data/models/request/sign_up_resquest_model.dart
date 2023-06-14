import 'package:either_dart/either.dart';

import 'package:oohferta/src/modules/core/data/value_objects/name_vo.dart';
import 'package:oohferta/src/modules/core/data/value_objects/email_vo.dart';
import 'package:oohferta/src/modules/core/data/value_objects/password_vo.dart';

import 'package:oohferta/src/modules/core/data/models/request/resquest_model.dart';

final class SignUpRequestModel implements RequestModel {
  final NameVO name;
  final EmailVO email;
  final PasswordVO password;

  const SignUpRequestModel({
    required this.name,
    required this.email,
    required this.password,
  });

  factory SignUpRequestModel.empty() => SignUpRequestModel(
        name: NameVO(''),
        email: EmailVO(''),
        password: PasswordVO(''),
      );

  SignUpRequestModel copyWith({
    String? name,
    String? email,
    String? password,
  }) =>
      SignUpRequestModel(
        name: NameVO(name ?? this.name.value),
        email: EmailVO(email ?? this.email.value),
        password: PasswordVO(password ?? this.password.value),
      );

  @override
  Either<String, SignUpRequestModel> validate() =>
      fieldsAreValid() ? Right(this) : const Left('Dados inválidos.');

  @override
  bool fieldsAreValid() =>
      name.value.isNotEmpty &&
      email.value.isNotEmpty &&
      password.value.isNotEmpty;
}
