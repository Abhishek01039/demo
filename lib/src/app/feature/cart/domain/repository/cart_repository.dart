import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// blue print of [CartRepo]
abstract class CartRepo {
  /// Fetch cart
  Future<List<Product?>?> getCart();

  /// Post cart
  Future<void> postCart(List<Product?> cartList);

  /// Add product to cart
  Future<void> addToCart(Product product);
}
