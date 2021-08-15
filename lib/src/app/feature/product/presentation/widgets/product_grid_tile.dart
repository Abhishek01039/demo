import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:flutter/material.dart';

import 'package:demo/src/app/feature/product/presentation/widgets/product_item.dart';

/// Product grid to show all products to home screen
class ProductsGrid extends StatelessWidget {
  /// Constructor
  const ProductsGrid({Key? key, required this.products}) : super(key: key);

  /// List of all products which is fetched by API
  final List<Product?> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => ProductItem(
        product: products[index]!,
      ),
    );
  }
}
