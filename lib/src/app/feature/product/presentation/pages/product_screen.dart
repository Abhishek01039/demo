import 'package:constant/constant.dart';
import 'package:demo/src/app/feature/product/domain/usecases/get_product.dart';
import 'package:demo/src/app/feature/product/presentation/bloc/product_bloc.dart';
import 'package:demo/src/app/feature/product/presentation/widgets/product_grid_tile.dart';
import 'package:demo/src/app/router/router_constant.dart';
import 'package:demo/src/injection/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';

/// Product screen
class ProductScreen extends StatelessWidget {
  /// Constructor
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shopping',
          style: Theme.of(context).textTheme.headline2,
        ),
        actions: [
          const _AvatarProfile(),
          IconButton(
            onPressed: () =>
                context.router.pushNamed(RouterConstant.cartScreen),
            icon: Icon(
              Icons.shopping_bag,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
      body: BlocProvider<ProductBloc>(
        create: (context) => ProductBloc(getProduct: getIt<GetProduct>()),
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              success: (product) => ProductsGrid(
                products: product,
              ),
              failure: (e) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(e),
                    ElevatedButton(
                      onPressed: () => context
                          .read<ProductBloc>()
                          .add(const ProductEvent.started()),
                      child: const Text('Retry'),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _AvatarProfile extends StatelessWidget {
  const _AvatarProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.pushNamed(RouterConstant.profileScreen),
      child: Hero(
        tag: 'profile-hero-key',
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Container(
              key: const Key('user_profile_image'),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ImageConstant.userProfileImage),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
