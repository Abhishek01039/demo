import 'package:demo/src/app/feature/product/data/repository/product_repo_impl.dart';
import 'package:demo/src/app/feature/product/domain/repository/product_repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final ProductRepo productRepo = ProductRepoImpl();

  group('ProductRepoImpl', () {
    test('ProductRepoImpl - getProduct method should return list of products',
        () async {
      final cartList = await productRepo.getProduct();

      expect(cartList?.length, equals(5));
    });
  });
}
