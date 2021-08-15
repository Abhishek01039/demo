import 'package:constant/constant.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

/// Iteration of products grid tile
class ProductItem extends StatelessWidget {
  /// Constuctor
  const ProductItem({Key? key, required this.product}) : super(key: key);

  /// Iteration of all product
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            product.name ?? '',
            textAlign: TextAlign.center,
          ),
        ),
        child: InkWell(
          onTap: () =>
              context.router.push(ProductDetailScreen(prodId: product.id!)),
          child: product.image == null
              ? const Image(image: Svg(ImageConstant.logo))
              : FadeInImage(
                  placeholder: const Svg(ImageConstant.logo),
                  image: NetworkImage(
                    product.image!,
                  ),
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
