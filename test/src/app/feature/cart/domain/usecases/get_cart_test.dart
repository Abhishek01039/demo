import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/cart/data/repository/cart_repo_impl.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/get_cart.dart';
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

  group('GetCart test', () {
    test('GetCart - call should return list of cart product', () async {
      final mockCartRepo = MockCartRepo();

      when(
        mockCartRepo.getCart,
      ).thenAnswer((_) => Future.value(cartList));

      final getCart = GetCart(cartRepo: mockCartRepo);

      final cartListData = await getCart.call(NoParams());

      expect(cartListData?.length, equals(1));
      verify(mockCartRepo.getCart).called(1);
    });
  });
}
