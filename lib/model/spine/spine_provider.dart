import 'package:flutter/foundation.dart';
import 'spine_getter.dart';

class SpineProvider<T> extends ValueNotifier<SpineGetter<T>> {
  SpineProvider(SpineGetter<T> initial) : super(initial);

  T get currentValue => value.value;

  void update(SpineGetter<T> newGetter) {
    if (value != newGetter) {
      value.dispose();
      value = newGetter;
    }
  }

  @override
  void dispose() {
    value.dispose();
    super.dispose();
  }
}

