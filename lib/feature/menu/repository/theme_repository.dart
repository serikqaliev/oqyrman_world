import '../database/theme_dao.dart';

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
