import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';

/// blue print of [ProductDetailRepo]
abstract class ProductDetailRepo {
  /// Fetch product by id
  Future<Product?> getProductById(int id);
}
