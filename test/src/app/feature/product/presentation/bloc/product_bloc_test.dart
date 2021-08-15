import 'package:bloc_test/bloc_test.dart';
import 'package:demo/src/app/feature/product/data/repository/product_repo_impl.dart';
import 'package:demo/src/app/feature/product/domain/usecases/get_product.dart';
import 'package:demo/src/app/feature/product/presentation/bloc/product_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mock_resource/product_list.dart';

class MockProductRepoImpl extends Mock implements ProductRepoImpl {}

void main() {
  group('ProductBloc test', () {
    blocTest<ProductBloc, ProductState>(
      'emits [ProductState.loading(), ProductState.success()] when user '
      'tries to fetch product list',
      build: () {
        final mockProductRepoImpl = MockProductRepoImpl();
        when(
          mockProductRepoImpl.getProduct,
        ).thenAnswer((invocation) => Future.value(productsList));
        return ProductBloc(
            getProduct: GetProduct(productRepo: mockProductRepoImpl));
      },
      expect: () => [
        const ProductState.loading(),
        ProductState.success(productsList!),
      ],
    );

    blocTest<ProductBloc, ProductState>(
      'emits [ProductState.loading(), ProductState.success()] when user '
      'tries to fetch product list and get the null',
      build: () {
        final mockProductRepoImpl = MockProductRepoImpl();
        when(
          mockProductRepoImpl.getProduct,
        ).thenAnswer((invocation) => Future.value(null));
        return ProductBloc(
            getProduct: GetProduct(productRepo: mockProductRepoImpl));
      },
      expect: () => [
        const ProductState.loading(),
        const ProductState.failure('Exception: Something went wrong'),
      ],
    );

    blocTest<ProductBloc, ProductState>(
      'emits [ProductState.loading(), ProductState.failure()] if '
      'Exception occurs while user tries to fetch product list',
      build: () {
        final mockProductRepoImpl = MockProductRepoImpl();
        when(
          mockProductRepoImpl.getProduct,
        ).thenThrow('Something went wrong');
        return ProductBloc(
            getProduct: GetProduct(productRepo: mockProductRepoImpl));
      },
      expect: () => [
        const ProductState.loading(),
        const ProductState.failure('Something went wrong'),
      ],
    );
  });
}
