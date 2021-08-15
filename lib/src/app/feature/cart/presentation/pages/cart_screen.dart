import 'package:constant/constant.dart';
import 'package:demo/src/app/core/widgets/snackbar_widget.dart';
import 'package:demo/src/app/feature/cart/presentation/widgets/cart_list_tile.dart';
import 'package:demo/src/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:demo/src/app/feature/cart/presentation/bloc/cart_bloc.dart';

/// Cart screen
class CartScreen extends StatefulWidget {
  /// Constructor
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CartBloc>().add(const CartEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          if (state is Failure) {
            /// Show error snackbar
            showSnackbar(context: context, text: state.errorMessage);
          }
        },
        builder: (context, state) {
          return state.when(
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
            success: (product) {
              if (product.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConstant.emptyCart,
                      ),
                      Text(
                        'Your Cart is empty',
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary ==
                                    Styleguide.white
                                ? Styleguide.black
                                : Styleguide.white),
                      ),
                    ],
                  ),
                );
              }
              return CartListTile(
                cart: product,
              );
            },
            failure: (e) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(e),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<CartBloc>().add(const CartEvent.started()),
                    child: const Text('Retry'),
                  )
                ],
              ),
            ),
            addToCartSuccess: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
