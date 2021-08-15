import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/cart/domain/repository/cart_repository.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// UseCase for assigning new product list to cart
class PostCart implements UseCase<void, List<Product?>> {
  /// Constructor
  PostCart({required this.cartRepo});

  /// Instance of [CartRepo]
  final CartRepo cartRepo;

  @override
  Future<void> call(List<Product?> cartList) async {
    await cartRepo.postCart(cartList);
  }
}
