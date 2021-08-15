import 'package:bloc_test/bloc_test.dart';
import 'package:demo/src/app/feature/product_detail/domain/repository/product_detail_repo.dart';
import 'package:demo/src/app/feature/product_detail/domain/usecases/get_product_detail.dart';
import 'package:demo/src/app/feature/product_detail/presentation/cubit/productdetail_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mock_resource/product_list.dart';

class MockProductDetailRepo extends Mock implements ProductDetailRepo {}

void main() {
  group('ProductdetailCubit test', () {
    blocTest<ProductdetailCubit, ProductdetailState>(
      'emits [ProductdetailState.loading(), ProductdetailState.success()] when '
      'user tries to fetch cart list by id',
      build: () {
        final mockProductDetailRepo = MockProductDetailRepo();
        when(
          () => mockProductDetailRepo.getProductById(any()),
        ).thenAnswer((_) => Future.value(productsList![0]));
        return ProductdetailCubit(
            getProductDetail:
                GetProductDetail(productDetailRepo: mockProductDetailRepo));
      },
      act: (bloc) => bloc.fetchProductDetail(1),
      expect: () => [
        const ProductdetailState.loading(),
        ProductdetailState.success(productsList![0])
      ],
    );

    blocTest<ProductdetailCubit, ProductdetailState>(
      'emits [ProductdetailState.loading(), ProductdetailState.failure()] when '
      'user tries to fetch cart list by id and get null',
      build: () {
        final mockProductDetailRepo = MockProductDetailRepo();
        when(
          () => mockProductDetailRepo.getProductById(any()),
        ).thenAnswer((_) => Future.value(null));
        return ProductdetailCubit(
            getProductDetail:
                GetProductDetail(productDetailRepo: mockProductDetailRepo));
      },
      act: (bloc) => bloc.fetchProductDetail(1),
      expect: () => [
        const ProductdetailState.loading(),
        const ProductdetailState.failure('Exception: Something went wrong')
      ],
    );

    blocTest<ProductdetailCubit, ProductdetailState>(
      'emits [ProductdetailState.loading(), ProductdetailState.failure()] if '
      'Exception occurs while user tries to fetch cart list by id',
      build: () {
        final mockProductDetailRepo = MockProductDetailRepo();
        when(
          () => mockProductDetailRepo.getProductById(any()),
        ).thenThrow('Something went wrong');
        return ProductdetailCubit(
            getProductDetail:
                GetProductDetail(productDetailRepo: mockProductDetailRepo));
      },
      act: (bloc) => bloc.fetchProductDetail(1),
      expect: () => [
        const ProductdetailState.loading(),
        const ProductdetailState.failure('Something went wrong')
      ],
    );
  });
}
