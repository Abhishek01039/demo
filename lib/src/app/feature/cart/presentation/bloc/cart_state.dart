part of 'cart_bloc.dart';

/// State when user tries to add and fetch products to cart
@freezed
class CartState with _$CartState {
  /// Loading state of cart Services
  const factory CartState.loading() = _Loading;

  /// Success state of cart Services
  const factory CartState.success(List<Product?> cart) = _Success;

  /// Error state of cart Services
  const factory CartState.failure(String errorMessage) = Failure;

  /// Success state while store product to cart
  const factory CartState.addToCartSuccess() = AddToCartSuccess;
}
