import 'package:demo/src/app/feature/cart/data/repository/cart_repo_impl.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/post_cart.dart';
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

  group('PostCart test', () {
    test(
        'PostCart - call method should assign new cart '
        'list to global cart list', () async {
      final mockCartRepo = MockCartRepo();

      when(
        () => mockCartRepo.postCart(any()),
      ).thenAnswer((_) => Future.value());

      final postCart = PostCart(cartRepo: mockCartRepo);

      await postCart.call(cartList);

      verify(() => mockCartRepo.postCart(any())).called(1);
    });
  });
}
