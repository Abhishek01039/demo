import 'package:cached_network_image/cached_network_image.dart';
import 'package:constant/constant.dart';
import 'package:demo/src/app/core/extension/decimal_number.dart';
import 'package:demo/src/app/core/widgets/snackbar_widget.dart';
import 'package:demo/src/app/feature/cart/presentation/bloc/cart_bloc.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [CartItem] is [ListTile] of cart products
class CartItem extends StatelessWidget {
  /// Constructor
  const CartItem({Key? key, required this.product, required this.productList})
      : super(key: key);

  /// Iteration of products
  final Product? product;

  /// All product list for passing to bloc events
  final List<Product?> productList;

  @override
  Widget build(BuildContext context) {
    const gap = SizedBox(width: 12);
    return Dismissible(
      // Each Dismissible must contain a Key. Keys allow Flutter to
      // uniquely identify widgets.
      key: Key({product?.id ?? 1}.toString()),
      // Provide a function that tells the app
      // what to do after an item has been swiped away.
      onDismissed: (direction) {
        // Remove the item from the data source.
        context.read<CartBloc>().add(
              CartEvent.remove(productList, product!.id!),
            );

        showSnackbar(context: context, text: 'Product remove from cart.');
      },
      background: Container(color: Styleguide.colorRed_3),
      child: ListTile(
        title: Text(
          product?.name ?? '',
          style: Theme.of(context).textTheme.headline3,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        isThreeLine: true,
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onSecondary)),
                  child: InkWell(
                    onTap: () {
                      context.read<CartBloc>().add(
                            CartEvent.increment(productList, product!.id!),
                          );
                    },
                    child: const Icon(
                      Icons.add,
                      size: 24,
                    ),
                  ),
                ),
                gap,
                Text(
                  product!.quantity.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                gap,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.onSecondary)),
                  child: InkWell(
                    onTap: () => context.read<CartBloc>().add(
                          CartEvent.decrement(productList, product!.id!),
                        ),
                    child: const Icon(
                      Icons.remove,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              DecimalNumber(product?.price).getDecimalNumber() ?? '',
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: product?.image == null
              ? const Image(image: Svg(ImageConstant.logo))
              : CachedNetworkImage(
                  width: 40,
                  placeholder: (context, url) =>
                      const Image(image: Svg(ImageConstant.logo)),
                  imageUrl: product?.image ?? '',
                ),
        ),
      ),
    );
  }
}
