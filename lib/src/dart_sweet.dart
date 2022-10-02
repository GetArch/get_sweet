extension DartSweetX on dynamic{
  T? isOrNull<T>([Function(T it)? on, Function(dynamic it)? or]) {
    if (this is T) {
      on?.call(this as T);
      return this as T;
    } else {
      or?.call(this);
      return null;
    }
  }
}