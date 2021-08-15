import 'package:shared_preferences/shared_preferences.dart';

/// Class [ThemeHelper] is responsible for storing and fetching
/// [theme] from [share preference]
class ThemeHelper {
  static const String _theme = 'localeLanguageCode';

  /// Save [theme] to [share preference]
  Future<void> saveTheme(String theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_theme, theme);
  }

  /// Fetch [theme] from [share preference]
  Future<String?> get theme async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_theme);
  }
}
