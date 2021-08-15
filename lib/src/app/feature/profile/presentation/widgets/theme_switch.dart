import 'package:demo/src/config/theme_config.dart';
import 'package:demo/src/config/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Switch Widget to change Theme
class ThemeSwitch extends StatelessWidget {
  /// Constructor
  const ThemeSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) => Switch.adaptive(
        value: state.appThemeType == AppTheme.darkTheme,
        onChanged: (val) => context.read<ThemeCubit>().changeTheme(
              val ? AppTheme.darkTheme : AppTheme.lightTheme,
            ),
      ),
    );
  }
}
