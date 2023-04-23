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
