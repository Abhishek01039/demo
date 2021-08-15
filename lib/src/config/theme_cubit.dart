import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'theme_config.dart';
import 'theme_helper.dart';

/// Cubit to handle Theme throughout the app
class ThemeCubit extends Cubit<ThemeState> {
  /// Constructor
  ThemeCubit({required String theme})
      : super(ThemeState(
          appThemeType:
              theme == 'light' ? AppTheme.lightTheme : AppTheme.darkTheme,
        ));

  /// Change theme of our app
  Future<void> changeTheme(AppTheme appTheme) async {
    await _persistTheme(appTheme);
    emit(ThemeState(
      appThemeType: appTheme,
    ));
  }

  Future<void> _persistTheme(AppTheme theme) async {
    /// Store themes to shared preference
    await ThemeHelper()
        .saveTheme(theme == AppTheme.lightTheme ? 'light' : 'dark');
  }
}

/// State when user tries to update theme
class ThemeState extends Equatable {
  /// Constructor
  const ThemeState({
    required this.appThemeType,
  });

  /// Pass eithr [lightTheme] or [darkTheme]
  final AppTheme appThemeType;

  @override
  List<Object> get props => [appThemeType];
}
