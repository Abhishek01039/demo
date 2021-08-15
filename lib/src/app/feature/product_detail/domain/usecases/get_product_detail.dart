import 'package:demo/src/app/core/usercases/usecase.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product_detail/domain/repository/product_detail_repo.dart';

/// UseCase for getting product details
class GetProductDetail implements UseCase<Product?, int> {
  /// Constructor
  GetProductDetail({required this.productDetailRepo});

  /// Instance of [ProductDetailRepo]
  final ProductDetailRepo productDetailRepo;

  @override
  Future<Product?> call(int id) {
    return productDetailRepo.getProductById(id);
  }
}
