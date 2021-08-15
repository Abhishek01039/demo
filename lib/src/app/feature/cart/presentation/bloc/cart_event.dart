part of 'cart_bloc.dart';

/// All events of cart Services
@freezed
class CartEvent with _$CartEvent {
  /// initial event for cart Services
  const factory CartEvent.started() = _Started;

  /// Increment [Product().quantity]
  const factory CartEvent.increment(List<Product?> cart, int prodId) =
      _Increment;

  /// Decrement [Product().quantity]
  const factory CartEvent.decrement(List<Product?> cart, int prodId) =
      _Decrement;

  /// Remove product from cart list
  const factory CartEvent.remove(List<Product?> cart, int prodId) = _Remove;

  /// Remove product from cart list
  const factory CartEvent.addToCartEvent(Product product) = _AddToCart;
}
