import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product/domain/repository/product_repo.dart';

/// UseCase for getting products
class GetProduct implements UseCase<List<Product?>?, NoParams> {
  /// Constructor
  GetProduct({required this.productRepo});

  /// Instance of [ProductRepo]
  final ProductRepo productRepo;

  @override
  Future<List<Product?>?> call(NoParams noParams) {
    return productRepo.getProduct();
  }
}
