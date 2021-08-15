import 'package:constant/constant.dart';
import 'package:demo/src/app/core/extension/decimal_number.dart';
import 'package:demo/src/app/core/widgets/snackbar_widget.dart';
import 'package:demo/src/app/feature/cart/presentation/bloc/cart_bloc.dart';
import 'package:demo/src/app/feature/product/domain/entity/product_model.dart';
import 'package:demo/src/app/feature/product_detail/domain/usecases/get_product_detail.dart';
import 'package:demo/src/app/router/router_constant.dart';
import 'package:demo/src/config/color_config.dart';
import 'package:demo/src/injection/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../cubit/productdetail_cubit.dart';

/// Product detail screen
class ProductDetailScreen extends StatelessWidget {
  /// Constructor
  const ProductDetailScreen(
      {Key? key, @PathParam('prodId') required this.prodId})
      : super(key: key);

  /// When user wants to see any product details
  /// then pass the [prodId] to product detail page
  /// and then fetch the product details according
  /// to the [prodId].
  final int prodId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          if (state is AddToCartSuccess) {
            showSnackbar(context: context, text: 'Product added to cart');
          }
        },
        child: BlocProvider(
          create: (context) =>
              ProductdetailCubit(getProductDetail: getIt<GetProductDetail>())
                ..fetchProductDetail(prodId),
          child: BlocBuilder<ProductdetailCubit, ProductdetailState>(
            builder: (context, state) {
              return state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                success: (product) => SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _header(context, product),
                        _hero(product),
                        _section(context, product),
                        _bottomButton(context, product),
                      ],
                    ),
                  ),
                ),
                failure: (e) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(e),
                      ElevatedButton(
                        onPressed: () => context
                            .read<ProductdetailCubit>()
                            .fetchProductDetail(prodId),
                        child: const Text('Retry'),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context, Product? product) {
    const gap = SizedBox(width: 12);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BackButton(),
          Flexible(
            child: Text(
              product?.name ?? '',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          gap,
          IconButton(
            onPressed: () =>
                context.router.pushNamed(RouterConstant.cartScreen),
            icon: const Icon(
              Icons.shopping_bag,
              size: 34,
            ),
          ),
        ],
      ),
    );
  }

  Widget _hero(Product? product) {
    return product?.image == null
        ? const Image(image: Svg(ImageConstant.logo))
        : FadeInImage(
            placeholder: const Svg(ImageConstant.logo),
            image: NetworkImage(
              product?.image ?? '',
            ),
            fit: BoxFit.cover,
          );
  }

  Widget _section(BuildContext context, Product? product) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          Text(
            product?.desc ?? '',
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.headline3?.copyWith(
                  color: Styleguide.colorAccentsBlue_1,
                  height: 1.5,
                ),
          ),
        ],
      ),
    );
  }

  Widget _bottomButton(BuildContext context, Product? product) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              context.read<CartBloc>().add(CartEvent.addToCartEvent(product!));
            },
            child: const Text(
              'Add to Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Text(
            DecimalNumber(product?.price).getDecimalNumber() ?? '',
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
