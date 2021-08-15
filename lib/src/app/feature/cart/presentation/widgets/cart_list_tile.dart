import 'package:demo/src/app/feature/cart/presentation/widgets/cart_item.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:flutter/material.dart';

/// Lists of cart products
class CartListTile extends StatelessWidget {
  /// Constructor
  const CartListTile({Key? key, required this.cart}) : super(key: key);

  /// List of cart products
  final List<Product?> cart;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (context, index) => CartItem(
        product: cart[index],
        productList: cart,
      ),
    );
  }
}
