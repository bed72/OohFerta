abstract class ValueObject<T> {
  final T value;

  const ValueObject(this.value);

  String? validator([String? data]);
}
