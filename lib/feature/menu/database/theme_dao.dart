import 'package:shared_preferences/shared_preferences.dart';

class ThemeDao {
  final SharedPreferences _sharedPreferences;

  ThemeDao({
    required final SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  bool get isDarkTheme => _sharedPreferences.getBool('isDarkTheme') ?? false;

  Future<bool> changeTheme() async {
    return await _sharedPreferences.setBool(
      'isDarkTheme',
      !isDarkTheme,
    );
  }
}
