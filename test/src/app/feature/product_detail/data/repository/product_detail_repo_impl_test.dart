import 'package:demo/src/app/feature/product_detail/data/repository/product_detail_repo_impl.dart';
import 'package:demo/src/app/feature/product_detail/domain/repository/product_detail_repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final ProductDetailRepo productRepo = ProductDetailRepoImpl();

  group('ProductRepoImpl', () {
    test('ProductRepoImpl - getProduct method should return list of products',
        () async {
      final product = await productRepo.getProductById(1);

      expect(product?.id, equals(1));
      expect(product?.name,
          equals('Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops'));
    });
  });
}
