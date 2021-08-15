import 'package:bloc_test/bloc_test.dart';
import 'package:demo/src/app/feature/cart/data/repository/cart_repo_impl.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/add_to_cart.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/get_cart.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/post_cart.dart';
import 'package:demo/src/app/feature/cart/presentation/bloc/cart_bloc.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mock_resource/cart_list.dart';

class MockCartRepoImpl extends Mock implements CartRepoImpl {}

class MockGetCart extends Mock implements GetCart {}

class MockPostCart extends Mock implements PostCart {}

class MyTypeFake extends Fake implements Product {}

final List<Product?> incrementedList = [
  Product(
    5,
    '''
John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet''',
    '''
From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.''',
    'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
    90,
    100,
    2,
  ),
];

final List<Product?> decrementedList = [
  Product(
    5,
    '''
John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet''',
    '''
From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.''',
    'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
    90,
    100,
    1,
  ),
];

void main() {
  setUpAll(() {
    registerFallbackValue(MyTypeFake());
  });

  group('CartBloc test', () {
    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] when user tries to '
      'fetch cart list',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(const CartEvent.started()),
      expect: () => [
        const CartState.loading(),
        CartState.success(cartList),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] when user tries to '
      'fetch cart list and get the null',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(null));
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(const CartEvent.started()),
      expect: () => [
        const CartState.loading(),
        const CartState.failure('Exception: Something went wrong'),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.failure()] if Exception occurs '
      'while user tries to fetch cart list',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenThrow('Something went wrong');
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(const CartEvent.started()),
      expect: () => [
        const CartState.loading(),
        const CartState.failure('Something went wrong'),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] while user tries '
      "to increment product's quatity",
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.increment(cartList, 5)),
      expect: () => [
        const CartState.loading(),
        CartState.success(incrementedList),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] while user tries '
      "to increment product's quatity but rest of the product's quatity"
      'must be same',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.increment(cartList, 1)),
      expect: () => [
        const CartState.loading(),
        CartState.success(cartList),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] while user tries '
      "to decrement product's quatity but it will not be decremented because "
      "it's quatity is already 1",
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.decrement(cartList, 5)),
      expect: () => [
        const CartState.loading(),
        CartState.success(decrementedList),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] while user tries '
      "to decrement product's quatity",
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(incrementedList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.decrement(incrementedList, 5)),
      expect: () => [
        const CartState.loading(),
        CartState.success(decrementedList),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] while user tries '
      "to decrement product's quatity but rest of the product's quatity"
      'must be same',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.decrement(cartList, 1)),
      expect: () => [
        const CartState.loading(),
        CartState.success(cartList),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.success()] while user tries '
      'to remove product from cart',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());
        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.remove(cartList, 5)),
      expect: () => [
        const CartState.loading(),
        const CartState.success([]),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.addToCartSuccess()] while user '
      'tries to add product from cart',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());

        when(
          () => mockCartRepoImpl.addToCart(any()),
        ).thenAnswer((_) => Future.value());

        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.addToCartEvent(incrementedList[0]!)),
      expect: () => [
        const CartState.loading(),
        const CartState.addToCartSuccess(),
      ],
    );

    blocTest<CartBloc, CartState>(
      'emits [CartState.loading(), CartState.failure()] if Exception occurs '
      'while user tries to add product from cart',
      build: () {
        final mockCartRepoImpl = MockCartRepoImpl();
        when(
          mockCartRepoImpl.getCart,
        ).thenAnswer((_) => Future.value(cartList));

        when(
          () => mockCartRepoImpl.postCart(any()),
        ).thenAnswer((_) => Future.value());

        when(
          () => mockCartRepoImpl.addToCart(any()),
        ).thenThrow('Something went wrong');

        return CartBloc(
            getCart: GetCart(cartRepo: mockCartRepoImpl),
            postCart: PostCart(cartRepo: mockCartRepoImpl),
            addToCart: AddToCart(cartRepo: mockCartRepoImpl));
      },
      act: (bloc) => bloc.add(CartEvent.addToCartEvent(incrementedList[0]!)),
      expect: () => [
        const CartState.loading(),
        const CartState.failure('Something went wrong'),
      ],
    );
  });
}
