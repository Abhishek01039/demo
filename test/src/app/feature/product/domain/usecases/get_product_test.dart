import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/product/data/repository/product_repo_impl.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product/domain/usecases/get_product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../../../../../mock_resource/product_list.dart';

class MockProductRepoImpl extends Mock implements ProductRepoImpl {}

class MyTypeFake extends Fake implements Product {}

void main() {
  setUpAll(() {
    registerFallbackValue(MyTypeFake());
  });

  group('GetProduct test', () {
    test('GetProduct - call should return list of cart product', () async {
      final mockProductRepoImpl = MockProductRepoImpl();

      when(
        mockProductRepoImpl.getProduct,
      ).thenAnswer((_) => Future.value(productsList));

      final getCart = GetProduct(productRepo: mockProductRepoImpl);

      final productsListData = await getCart.call(NoParams());

      expect(productsListData?.length, equals(5));
      verify(mockProductRepoImpl.getProduct).called(1);
    });
  });
}
