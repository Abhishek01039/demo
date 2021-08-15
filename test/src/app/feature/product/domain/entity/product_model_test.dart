import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Product test', () {
    test('() default constructor', () {
      final product =
          Product(1, 'Laptop', 'This is very good laptop.', '', 10, 12);

      expect(product.id, equals(1));
      expect(product.name, equals('Laptop'));
      expect(product.mrp, equals(12));
      expect(product.price, equals(10));
      expect(product.desc, 'This is very good laptop.');
      expect(product.image, equals(''));
    });

    test('Product toJson', () {
      expect(
        Product(1, 'Laptop', null, null, null, null).toJson(),
        <String, dynamic>{
          'id': 1,
          'name': 'Laptop',
          'desc': null,
          'image': null,
          'mrp': null,
          'price': null,
          'quantity': 0
        },
      );
    });

    test('Product fromJson', () {
      expect(
        Product.fromJson(<String, dynamic>{
          'id': 2,
        }),
        Product(2, null, null, null, null, null),
      );
    });
  });
}
