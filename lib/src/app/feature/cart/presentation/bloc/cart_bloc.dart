import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/add_to_cart.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/get_cart.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/modify_cart.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

/// Cart BLoC Class for listen events of cart features
class CartBloc extends Bloc<CartEvent, CartState> {
  /// constructor
  CartBloc(
      {required GetCart getCart,
      required ModifyCart modifyCart,
      required AddToCart addToCart})
      : _getCart = getCart,
        _modifyCart = modifyCart,
        _addToCart = addToCart,
        super(const CartState.loading());

  final GetCart _getCart;
  final ModifyCart _modifyCart;
  final AddToCart _addToCart;

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    yield* event.when(
      started: () async* {
        yield const CartState.loading();

        try {
          final cart = await _getCart.call(NoParams());

          if (cart == null) {
            throw Exception('Something went wrong');
          }

          yield CartState.success(cart);
        } catch (e) {
          yield CartState.failure(e.toString());
        }
      },
      increment: (cart, prodId) async* {
        yield const CartState.loading();

        final cartList = <Product>[];
        for (final item in cart) {
          if (item?.id == prodId) {
            final quantity = item?.quantity ?? 1;
            cartList.add(Product(item?.id, item?.name, item?.desc, item?.image,
                item?.price, item?.mrp, quantity + 1));
          } else {
            cartList.add(item!);
          }
        }

        /// Update the product cart list
        await _modifyCart.call(cartList);
        yield CartState.success(cartList);
      },
      decrement: (cart, prodId) async* {
        yield const CartState.loading();

        final cartList = <Product>[];
        for (final item in cart) {
          if (item?.id == prodId) {
            if (item?.quantity == 1) {
              cartList.add(item!);
            } else {
              final quantity = item?.quantity ?? 1;
              cartList.add(Product(item?.id, item?.name, item?.desc,
                  item?.image, item?.price, item?.mrp, quantity - 1));
            }
          } else {
            cartList.add(item!);
          }
        }

        /// Update the product cart list
        await _modifyCart.call(cartList);
        yield CartState.success(cartList);
      },
      remove: (cart, prodId) async* {
        yield const CartState.loading();
        cart.removeWhere((e) => e?.id == prodId);

        /// Update the product cart list
        await _modifyCart.call(cart);
        yield CartState.success(cart);
      },
      addToCartEvent: (cart) async* {
        yield const CartState.loading();

        try {
          /// Create an object of product with quantity 1
          await _addToCart.call(Product(cart.id, cart.name, cart.desc,
              cart.image, cart.price, cart.mrp, 1));
          yield const CartState.addToCartSuccess();
        } catch (e) {
          yield CartState.failure(e.toString());
        }
      },
    );
  }
}
