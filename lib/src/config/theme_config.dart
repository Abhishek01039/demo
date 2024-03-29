import 'package:flutter/material.dart';

import 'package:demo/src/config/color_config.dart';

/// Enumeration of [Theme]
enum AppTheme {
  /// Light theme for our app
  lightTheme,

  /// Dark theme for our app
  darkTheme,
}

/// Return [ThemeData] based on [AppTheme]
/// which we are passing from [ThemeCubit]
ThemeData appThemeData(AppTheme appTheme) {
  return appTheme == AppTheme.lightTheme
      ? ThemeConfig.lightTheme
      : ThemeConfig.darkTheme;
}

/// Class for theme configuration
class ThemeConfig {
  ThemeConfig._();
  // Use HSV color space for proper LERPing.
  static Color _lerp(Color a, Color b, double t) =>
      HSVColor.lerp(HSVColor.fromColor(a), HSVColor.fromColor(b), t)!.toColor();

  /// Method for creating theme
  static ThemeData createTheme(
    ColorScheme colorScheme,
  ) {
    final baseTextTheme = colorScheme.brightness == Brightness.dark
        ? Typography.blackMountainView
        : Typography.whiteMountainView;

    final onBackground50 = _lerp(
      colorScheme.background,
      colorScheme.onBackground,
      0.50,
    );

    final onBackground15 = _lerp(
      colorScheme.background,
      colorScheme.onBackground,
      0.15,
    );

    const shadow = Styleguide.colorGray_9;

    final textTheme = _createTextTheme(baseTextTheme, colorScheme);
    return ThemeData(
      brightness: colorScheme.brightness,
      backgroundColor: colorScheme.background,
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      accentColor: colorScheme.secondary,
      disabledColor: onBackground50,
      toggleableActiveColor: colorScheme.primary,
      tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: colorScheme.onPrimary,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Styleguide.colorTransparent,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      dividerColor: onBackground15,
      dividerTheme: DividerThemeData(
        color: onBackground15,
        space: 1,
        thickness: 1,
        indent: 0,
        endIndent: 0,
      ),
      cardTheme: CardTheme(
        color: colorScheme.surface,
        shadowColor: shadow,
        margin: EdgeInsets.zero,
      ),
      appBarTheme: AppBarTheme(
        brightness: colorScheme.brightness,
        color: colorScheme.background,
      ),
      iconTheme: IconThemeData(
        size: 26,
        color: colorScheme.onSecondary,
      ),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        colorScheme: colorScheme,
        height: 52,
      ),
      textTheme: textTheme,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.primary,
        elevation: 4,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle:
            textTheme.caption?.copyWith(fontWeight: FontWeight.w700),
        unselectedLabelStyle:
            textTheme.caption?.copyWith(fontWeight: FontWeight.w300),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  static TextTheme _createTextTheme(
      TextTheme baseTextTheme, ColorScheme colorScheme) {
    return TextTheme(
      headline1: baseTextTheme.headline1?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline2: baseTextTheme.headline2?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 24,
      ),
      headline3: baseTextTheme.headline3?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 20,
      ),
      headline4: baseTextTheme.headline4?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      headline5: baseTextTheme.headline5?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 16,
      ),
      headline6: baseTextTheme.headline6?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 14,
      ),
      bodyText1: baseTextTheme.bodyText1?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      bodyText2: baseTextTheme.bodyText2?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      button: baseTextTheme.button?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      caption: baseTextTheme.caption?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
      overline: baseTextTheme.overline?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ),
      subtitle1: baseTextTheme.subtitle1?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: baseTextTheme.subtitle2?.copyWith(
        color: colorScheme.brightness == Brightness.dark
            ? Styleguide.white
            : Styleguide.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  /// Light theme configuration
  static ThemeData get lightTheme => createTheme(
        ColorScheme(
          brightness: Brightness.light,
          background: Styleguide.colorGray_0,
          onBackground: Styleguide.colorTransparent,
          surface: Styleguide.colorGray_0,
          onSurface: Styleguide.colorGray_9,
          primary: Styleguide.colorAccentsOrange_1,
          primaryVariant: Styleguide.colorGreen_5,
          onPrimary: Styleguide.colorGray_0,
          secondary: Styleguide.colorAccentsYellow_2,
          secondaryVariant: Styleguide.colorAccentsYellow_3,
          onSecondary: Styleguide.black,
          error: Styleguide.colorAccentsRed,
          onError: Styleguide.colorGray_0,
        ),
      );

  /// Dark theme configuration
  static ThemeData get darkTheme => createTheme(
        ColorScheme(
          brightness: Brightness.dark,
          background: Styleguide.colorGray_9,
          onBackground: Styleguide.colorGray_1,
          surface: Styleguide.colorGray_8,
          onSurface: Styleguide.colorGray_0,
          primary: Styleguide.colorAccentsOrange_1,
          primaryVariant: Styleguide.colorGreen_3,
          onPrimary: Styleguide.colorGray_0,
          secondary: Styleguide.colorAccentsYellow_1,
          secondaryVariant: Styleguide.colorAccentsYellow_2,
          onSecondary: Styleguide.white,
          error: Styleguide.colorAccentsRed,
          onError: Styleguide.colorGray_0,
        ),
      );
}
