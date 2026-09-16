import 'package:flutter/foundation.dart';

abstract class SpineGetter<T> {
  const SpineGetter();

  T get value;

  @mustCallSuper
  void dispose() {}
}

class ValueSpineGetter<T> extends SpineGetter<T> {
  final T _value;

  const ValueSpineGetter(this._value);

  @override
  T get value => _value;
}
