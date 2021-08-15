import 'package:demo/src/app.dart';
import 'package:demo/src/injection/setup_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:demo/src/config/theme_cubit.dart';
import 'package:demo/src/config/theme_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Setup all singletons
  setup();

  /// Fetch theme
  final theme = await ThemeHelper().theme;

  runApp(
    BlocProvider(
      create: (context) => ThemeCubit(
        theme: theme ?? 'light',
      ),
      child: App(),
    ),
  );
}
