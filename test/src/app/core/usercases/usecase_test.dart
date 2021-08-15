import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NoParams test', () {
    test('() default constructor', () {
      final noParams = NoParams();
      expect(noParams, NoParams());
    });
  });
}
