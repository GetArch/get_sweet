extension DartCollectionX<T> on List<T> {
  T? removeWhereOrNull(bool Function(T element) test) {
    final i = indexWhere(test);
    return (i == -1) ? null : removeAt(i);
  }
}
