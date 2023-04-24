import '../../../core/database/app_database.dart';
import 'package:drift/drift.dart';

import 'books_table.dart';
import 'categories_table.dart';

part 'categories_dao.g.dart';

/// Этот код определяет [DAO] (Data Access Object) для работы с таблицей категорий
/// в базе данных. [DAO] - это класс, который предоставляет методы для доступа к данным
/// в базе данных, такие как выборка, вставка, обновление и удаление записей.

/// В этом коде используется библиотека [Drift] для работы с [SQLite] базой данных.
/// [Drift] позволяет определять таблицы базы данных с помощью [Dart]-классов
/// и генерировать DAO для каждой таблицы.

/// Класс [CategoriesDao] наследуется от [DatabaseAccessor<AppDatabase>]
/// и использует миксин [_$CategoriesDaoMixin] для генерации кода [DAO].

@DriftAccessor(tables: [Books, Categories])
class CategoriesDao extends DatabaseAccessor<AppDatabase>
    with _$CategoriesDaoMixin {
  CategoriesDao(AppDatabase db) : super(db);

  Future<List<Category>> getAllCategories() {
    return select(categories).get();
  }

  Future<Category?> getCategoryByTitle(String title) {
    return (select(categories)..where((tbl) => tbl.title.equals(title)))
        .getSingleOrNull();
  }

  Future<int> insertCategory(Category category) {
    return into(categories).insert(category);
  }

  Future<bool> updateCategory(Category category) {
    return update(categories).replace(category);
  }

  Future<int> deleteCategory(Category category) {
    return delete(categories).delete(category);
  }
}
