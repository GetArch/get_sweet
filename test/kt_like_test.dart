import 'package:flutter_test/flutter_test.dart';
import 'package:get_sweet/src/kt_like.dart';

main() {
  test('let', () {
    final foo = 2.let<int, int>((it) => it * 3);
    expect(foo, 6);
  });

  test('also', () {
    final foo = 2.also<int>((it) => it * 3);
    expect(foo, 2);
  });

  test('takeIf', () {
    final foo = 2.takeIf<int>((it) => it.isEven);
    final bar = 3.takeIf<int>((it) => it.isEven);

    expect(foo, 2);
    expect(bar, null);
  });

  test('takeUnless', () {
    final foo = 2.takeUnless<int>((it) => it.isEven);
    final bar = 3.takeUnless<int>((it) => it.isEven);

    expect(foo, null);
    expect(bar, 2);
  });
}
