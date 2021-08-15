import 'package:demo/src/app/core/extension/decimal_number.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DecimalNumber test', () {
    test('DecimalNumber - should return two digit after decimal point', () {
      final number = DecimalNumber(12.34243).getDecimalNumber();

      expect(number, equals('12.34'));
    });

    test('DecimalNumber - should return null if we are passing null value', () {
      final number = DecimalNumber(null).getDecimalNumber();

      expect(number, equals(null));
    });
  });
}
