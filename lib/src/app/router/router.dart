import 'package:auto_route/auto_route.dart';
import 'package:demo/src/app/feature/cart/presentation/pages/cart_screen.dart';
import 'package:demo/src/app/feature/product/presentation/pages/product_screen.dart';
import 'package:demo/src/app/feature/product_detail/presentation/pages/product_detail_screen.dart';
import 'package:demo/src/app/feature/profile/presentation/pages/user_profile_screen.dart';
import 'package:demo/src/app/feature/splash/splash_screen.dart';
import 'package:demo/src/app/router/router_constant.dart';

/// Navigator 2.0 for our app
@MaterialAutoRouter(
  replaceInRouteName: 'Screen, Route',
  routes: <AutoRoute>[
    AutoRoute<SplashScreen>(
      page: SplashScreen,
      name: 'splashScreen',
      path: RouterConstant.splash,
      initial: true,
    ),
    AutoRoute<ProductScreen>(
      page: ProductScreen,
      name: 'productScreen',
      path: RouterConstant.productScreen,
    ),
    AutoRoute<ProductDetailScreen>(
      page: ProductDetailScreen,
      name: 'productDetailScreen',
      path: RouterConstant.productDetailScreen,
    ),
    AutoRoute<CartScreen>(
      page: CartScreen,
      name: 'cartScreen',
      path: RouterConstant.cartScreen,
    ),
    AutoRoute<UserProfileScreen>(
      page: UserProfileScreen,
      name: 'userProfileScreen',
      path: RouterConstant.profileScreen,
    ),
  ],
)
class $AppRouter {}
