import 'package:flutter/material.dart';
import 'package:demo/src/app/router/router.gr.dart';
import 'package:demo/src/config/theme_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/feature/cart/domain/usecases/add_to_cart.dart';
import 'app/feature/cart/domain/usecases/get_cart.dart';
import 'app/feature/cart/domain/usecases/post_cart.dart';
import 'app/feature/cart/presentation/bloc/cart_bloc.dart';
import 'config/theme_cubit.dart';
import 'injection/setup_locator.dart';

/// App class which is called by main function
class App extends StatelessWidget {
  /// Constructor
  App({Key? key}) : super(key: key);

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartBloc>(
      create: (context) => CartBloc(
        getCart: getIt<GetCart>(),
        postCart: getIt<PostCart>(),
        addToCart: getIt<AddToCart>(),
      ),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            theme: appThemeData(themeState.appThemeType),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
