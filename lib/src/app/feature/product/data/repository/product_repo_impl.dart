import 'package:demo/src/app/feature/product/data/resources/product_resource.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product/domain/repository/product_repo.dart';

/// Wait till 2 seconds
Future<void> wait() => Future.delayed(const Duration(seconds: 2));

/// Implementation of [ProductRepo]
class ProductRepoImpl extends ProductRepo {
  @override
  Future<List<Product?>?> getProduct() async {
    /// Wait 2 seconds while returning dummy product data
    await wait();

    /// Return dummy products
    return products;
  }
}
