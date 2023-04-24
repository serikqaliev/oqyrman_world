import 'package:shared_preferences/shared_preferences.dart';

/// Данный код представляет собой DAO (Data Access Object) для работы с темой в приложении.
/// В классе `ThemeDao` используется пакет `shared_preferences`
/// для работы с постоянным хранилищем на устройстве.

/// В конструкторе класса инициализируется экземпляр `SharedPreferences`
/// и сохраняется в поле `_sharedPreferences`. Метод `isDarkTheme` возвращает значение типа `bool`,
/// которое является значением ключа `isDarkTheme` из хранилища. Если такого ключа в хранилище нет,
/// то возвращается значение по умолчанию - `false`.

/// Метод `changeTheme` меняет значение ключа `isDarkTheme` в хранилище на противоположное
/// и возвращает результат операции записи значения.

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
