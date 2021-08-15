import 'package:demo/src/app/feature/product/data/resources/product_resource.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product_detail/domain/repository/product_detail_repo.dart';

/// Wait till 2 seconds
Future<void> wait() => Future.delayed(const Duration(seconds: 2));

/// Implementation of [ProductDetailRepo]
class ProductDetailRepoImpl extends ProductDetailRepo {
  @override
  Future<Product?> getProductById(int id) async {
    await wait();

    return products.singleWhere((element) => element.id == id);
  }
}
