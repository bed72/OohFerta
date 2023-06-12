import 'package:either_dart/either.dart';

abstract class ValueObject<T> {
  final T value;

  const ValueObject(this.value);

  Either<String, ValueObject<T>> validate();
}
