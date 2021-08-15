// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../feature/cart/presentation/pages/cart_screen.dart' as _i6;
import '../feature/product/presentation/pages/product_screen.dart' as _i4;
import '../feature/product_detail/presentation/pages/product_detail_screen.dart'
    as _i5;
import '../feature/profile/presentation/pages/user_profile_screen.dart' as _i7;
import '../feature/splash/splash_screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) => _i1.MaterialPageX<_i3.SplashScreen>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashScreen();
        }),
    ProductScreen.name: (routeData) => _i1.MaterialPageX<_i4.ProductScreen>(
        routeData: routeData,
        builder: (_) {
          return const _i4.ProductScreen();
        }),
    ProductDetailScreen.name: (routeData) => _i1.MaterialPageX<
            _i5.ProductDetailScreen>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<ProductDetailScreenArgs>(
              orElse: () =>
                  ProductDetailScreenArgs(prodId: pathParams.getInt('prodId')));
          return _i5.ProductDetailScreen(key: args.key, prodId: args.prodId);
        }),
    CartScreen.name: (routeData) => _i1.MaterialPageX<_i6.CartScreen>(
        routeData: routeData,
        builder: (_) {
          return const _i6.CartScreen();
        }),
    UserProfileScreen.name: (routeData) =>
        _i1.MaterialPageX<_i7.UserProfileScreen>(
            routeData: routeData,
            builder: (_) {
              return const _i7.UserProfileScreen();
            })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashScreen.name, path: '/'),
        _i1.RouteConfig(ProductScreen.name, path: '/productscreen'),
        _i1.RouteConfig(ProductDetailScreen.name,
            path: '/productscreen/productdetailscreen'),
        _i1.RouteConfig(CartScreen.name, path: '/productscreen/cartscreen'),
        _i1.RouteConfig(UserProfileScreen.name, path: '/profilescreen')
      ];
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}

class ProductScreen extends _i1.PageRouteInfo {
  const ProductScreen() : super(name, path: '/productscreen');

  static const String name = 'ProductScreen';
}

class ProductDetailScreen extends _i1.PageRouteInfo<ProductDetailScreenArgs> {
  ProductDetailScreen({_i2.Key? key, required int prodId})
      : super(name,
            path: '/productscreen/productdetailscreen',
            args: ProductDetailScreenArgs(key: key, prodId: prodId));

  static const String name = 'ProductDetailScreen';
}

class ProductDetailScreenArgs {
  const ProductDetailScreenArgs({this.key, required this.prodId});

  final _i2.Key? key;

  final int prodId;
}

class CartScreen extends _i1.PageRouteInfo {
  const CartScreen() : super(name, path: '/productscreen/cartscreen');

  static const String name = 'CartScreen';
}

class UserProfileScreen extends _i1.PageRouteInfo {
  const UserProfileScreen() : super(name, path: '/profilescreen');

  static const String name = 'UserProfileScreen';
}
