import 'package:books_app/feature/book_details/bloc/book_detail_page_bloc.dart';
import 'package:books_app/feature/book_details/database/books_dao.dart';
import 'package:books_app/feature/book_details/database/categories_dao.dart';
import 'package:books_app/feature/menu/bloc/theme_bloc.dart';
import 'package:books_app/feature/menu/database/theme_dao.dart';
import 'package:books_app/feature/new_book/bloc/new_book_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../feature/book_details/repository/books_repository.dart';
import '../../feature/home/bloc/home_page_bloc.dart';
import '../../feature/menu/bloc/menu_bloc.dart';
import '../../feature/menu/repository/theme_repository.dart';
import '../database/app_database.dart';

/// В данном коде происходит настройка и инициализация зависимостей с помощью пакета `get_it`.
/// Сначала регистрируются экземпляры классов, которые используются в приложении: `AppDatabase`,
/// `SharedPreferences`, `BooksDao`, `CategoriesDao`, `ThemeDao`, `BooksRepository` и `ThemeRepository`.
/// Затем регистрируются фабрики для создания экземпляров `HomePageBloc`, `NewBookBloc`, `BookDetailPageBloc`,
/// `ThemeBloc` и `MenuBloc`.

/// `AppDatabase` используется для создания и управления базой данных приложения. `SharedPreferences`
/// используется для хранения настроек приложения. `BooksDao` и `CategoriesDao` являются объектами доступа
/// к данным (DAO), которые предоставляют методы для работы с соответствующими таблицами базы данных.
/// `ThemeDao` предоставляет методы для работы с темой приложения. `BooksRepository` и `ThemeRepository`
/// предоставляют методы для получения и обновления данных из базы данных.

/// Фабрики создают экземпляры блоков, которые используются в приложении для управления состоянием
/// и бизнес-логикой. Каждый блок получает соответствующий репозиторий в конструкторе и использует его
/// для получения и обновления данных. В итоге, приложение получает доступ к необходимым зависимостям
/// через `get_it`, что облегчает управление зависимостями и упрощает тестирование кода.

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AppDatabase>(
    AppDatabase(name: 'oqyrman_world'),
  );

  getIt.registerSingletonAsync<SharedPreferences>(
    () => SharedPreferences.getInstance(),
  );

  getIt.registerLazySingleton<BooksDao>(
    () => BooksDao(getIt()),
  );

  getIt.registerLazySingleton<CategoriesDao>(
    () => CategoriesDao(getIt()),
  );

  getIt.registerLazySingleton<ThemeDao>(
    () => ThemeDao(
      sharedPreferences: getIt(),
    ),
  );

  getIt.registerLazySingleton<BooksRepository>(
    () => BooksRepositoryImpl(
      booksDao: getIt(),
      categoriesDao: getIt(),
    ),
  );

  getIt.registerLazySingleton<ThemeRepository>(
    () => ThemeRepositoryImpl(
      themeDao: getIt(),
    ),
  );

  getIt.registerFactory(
    () => HomePageBloc(
      booksRepository: getIt(),
    ),
  );

  getIt.registerFactory(
    () => NewBookBloc(
      booksRepository: getIt(),
    ),
  );

  getIt.registerFactory(
    () => BookDetailPageBloc(
      booksRepository: getIt(),
    ),
  );

  getIt.registerFactory(
    () => ThemeBloc(
      themeRepository: getIt(),
    ),
  );

  getIt.registerFactory(
    () => MenuBloc(
      booksRepository: getIt(),
    ),
  );
}
