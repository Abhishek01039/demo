import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product_detail/data/repository/product_detail_repo_impl.dart';
import 'package:demo/src/app/feature/product_detail/domain/usecases/get_product_detail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mock_resource/product_list.dart';

class MockProductDetailRepoImpl extends Mock implements ProductDetailRepoImpl {}

class MyTypeFake extends Fake implements Product {}

void main() {
  setUpAll(() {
    registerFallbackValue(MyTypeFake());
  });

  group('GetProductDetail test', () {
    test('GetProductDetail - call should return list of cart product',
        () async {
      final mockProductDetailRepoImpl = MockProductDetailRepoImpl();

      when(
        () => mockProductDetailRepoImpl.getProductById(any()),
      ).thenAnswer((_) => Future.value(productsList![0]));

      final getProductDetail =
          GetProductDetail(productDetailRepo: mockProductDetailRepoImpl);

      final cartListData = await getProductDetail.call(1);

      expect(cartListData?.id, equals(1));
      verify(() => mockProductDetailRepoImpl.getProductById(any())).called(1);
    });
  });
}
