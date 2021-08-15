import 'package:demo/src/app/feature/cart/data/repository/cart_repo_impl.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/add_to_cart.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mock_resource/cart_list.dart';

class MockCartRepo extends Mock implements CartRepoImpl {}

class MyTypeFake extends Fake implements Product {}

void main() {
  setUpAll(() {
    registerFallbackValue(MyTypeFake());
  });

  group('AddToCart test', () {
    test('AddToCart - call should add product to cart', () {
      final mockCartRepo = MockCartRepo();

      when(
        () => mockCartRepo.addToCart(any()),
      ).thenAnswer((_) => Future.value());

      AddToCart(cartRepo: mockCartRepo).call(cartList[0]!);

      expect(1, equals(1));
      verify(() => mockCartRepo.addToCart(any())).called(1);
    });
  });
}
