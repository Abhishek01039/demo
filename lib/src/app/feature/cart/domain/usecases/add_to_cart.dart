import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/cart/domain/repository/cart_repository.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// UseCase for adding product to cart
class AddToCart implements UseCase<void, Product> {
  /// Constructor
  AddToCart({required this.cartRepo});

  /// Instance of [CartRepo]
  final CartRepo cartRepo;

  @override
  Future<void> call(Product product) async {
    await cartRepo.addToCart(product);
  }
}
