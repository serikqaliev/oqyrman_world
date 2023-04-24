import '../database/theme_dao.dart';

/// Этот код представляет собой реализацию репозитория для работы с темами приложения.
/// Он использует `ThemeDao` для взаимодействия с базой данных (используя пакет `shared_preferences`
/// для сохранения настроек). `ThemeRepositoryImpl` реализует абстрактный класс `ThemeRepository`,
/// который определяет два метода: `isDarkTheme` и `changeTheme()`. `isDarkTheme` возвращает булевое значение,
/// указывающее, используется ли в приложении темная тема или нет. `changeTheme()` переключает тему
/// на противоположную и сохраняет ее значение в базе данных, чтобы изменения сохранялись
/// после перезапуска приложения.

abstract class ThemeRepository {
  bool get isDarkTheme;
  Future<void> changeTheme();
}

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeDao _themeDao;

  ThemeRepositoryImpl({
    required final ThemeDao themeDao,
  }) : _themeDao = themeDao;

  @override
  bool get isDarkTheme => _themeDao.isDarkTheme;

  @override
  Future<void> changeTheme() async {
    await _themeDao.changeTheme();
  }
}
