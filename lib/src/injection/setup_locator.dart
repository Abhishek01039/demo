import 'package:demo/src/app/feature/cart/data/repository/cart_repo_impl.dart';
import 'package:demo/src/app/feature/cart/domain/repository/cart_repository.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/add_to_cart.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/get_cart.dart';
import 'package:demo/src/app/feature/cart/domain/usecases/modify_cart.dart';
import 'package:demo/src/app/feature/product/data/repository/product_repo_impl.dart';
import 'package:demo/src/app/feature/product/domain/repository/product_repo.dart';
import 'package:demo/src/app/feature/product/domain/usecases/get_product.dart';
import 'package:demo/src/app/feature/product_detail/data/repository/product_detail_repo_impl.dart';
import 'package:demo/src/app/feature/product_detail/domain/repository/product_detail_repo.dart';
import 'package:demo/src/app/feature/product_detail/domain/usecases/get_product_detail.dart';
import 'package:demo/src/app/feature/profile/data/repository/profile_repo_impl.dart';
import 'package:demo/src/app/feature/profile/domain/repositoty/profile_repo.dart';
import 'package:demo/src/app/feature/profile/domain/usecases/get_user.dart';
import 'package:get_it/get_it.dart';

/// getIt singleton
final getIt = GetIt.instance;

/// Setup all singletons
void setup() {
  getIt
    ..registerSingleton<ProductRepo>(ProductRepoImpl())
    ..registerSingleton<CartRepo>(CartRepoImpl())
    ..registerSingleton<ProfileRepo>(ProfileRepoImpl())
    ..registerSingleton<ProductDetailRepo>(ProductDetailRepoImpl())
    ..registerSingleton<GetCart>(GetCart(cartRepo: getIt<CartRepo>()))
    ..registerSingleton<ModifyCart>(ModifyCart(cartRepo: getIt<CartRepo>()))
    ..registerSingleton<AddToCart>(AddToCart(cartRepo: getIt<CartRepo>()))
    ..registerSingleton<GetProduct>(
        GetProduct(productRepo: getIt<ProductRepo>()))
    ..registerSingleton<GetProductDetail>(
        GetProductDetail(productDetailRepo: getIt<ProductDetailRepo>()))
    ..registerSingleton<GetUser>(GetUser(profileRepo: getIt<ProfileRepo>()));
}
