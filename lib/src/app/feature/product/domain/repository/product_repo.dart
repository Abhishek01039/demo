import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// blue print of [ProductRepo]
abstract class ProductRepo {
  /// Fetch product
  Future<List<Product?>?> getProduct();
}
