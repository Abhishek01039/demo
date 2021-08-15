import 'package:demo/src/app/feature/cart/data/repository/cart_repo_impl.dart';
import 'package:demo/src/app/feature/cart/domain/repository/cart_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../../mock_resource/cart_list.dart';

void main() {
  final CartRepo cartRepo = CartRepoImpl();

  group('CartRepoImpl', () {
    test('CartRepoImpl - getCart method should return list of cart', () async {
      final cartList = await cartRepo.getCart();

      expect(cartList?.length, equals(0));
    });

    test('CartRepoImpl - postCart method should assign cart list', () async {
      await cartRepo.postCart(cartList);

      expect(cartList.length, equals(1));
    });

    test('CartRepoImpl - addToCart method should add product to cart',
        () async {
      await cartRepo.addToCart(cartList[0]!);

      expect(cartList.length, equals(2));
    });
  });
}
