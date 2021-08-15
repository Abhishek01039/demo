import 'package:demo/src/app/feature/cart/data/resources/cart_resources.dart';
import 'package:demo/src/app/feature/cart/domain/repository/cart_repository.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// Wait till 2 seconds
Future<void> wait() => Future.delayed(const Duration(seconds: 2));

/// Implementation of [CartRepo]
class CartRepoImpl extends CartRepo {
  @override
  Future<List<Product?>?> getCart() async {
    /// Wait 2 seconds while returning dummy product data
    await wait();

    /// Return dummy cart
    return cart;
  }

  @override
  Future<void> postCart(List<Product?> cartList) async {
    cart = cartList;
  }

  @override
  Future<void> addToCart(Product product) async {
    cart.add(product);
  }
}
