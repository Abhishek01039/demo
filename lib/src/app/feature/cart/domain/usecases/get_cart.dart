import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/cart/domain/repository/cart_repository.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// UseCase for getting products from cart
class GetCart implements UseCase<List<Product?>?, NoParams> {
  /// Constructor
  GetCart({required this.cartRepo});

  /// Instance of [CartRepo]
  final CartRepo cartRepo;

  @override
  Future<List<Product?>?> call(NoParams noParams) {
    return cartRepo.getCart();
  }
}
