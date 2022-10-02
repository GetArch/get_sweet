import 'package:flutter_test/flutter_test.dart';
import 'package:get_sweet/src/dart_sweet.dart';

main() {
  test('isOrNull', () {
    int foo = 1;

    expect(foo.isOrNull<int>(), foo);
    expect(foo.isOrNull<String>(), null);
  });
}
