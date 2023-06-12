import 'package:either_dart/either.dart';

abstract interface class RequestModel {
  bool fieldsAreValid();
  Either<String, RequestModel> validate();
}
