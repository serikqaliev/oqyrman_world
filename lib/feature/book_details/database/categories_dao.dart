import '../../../core/database/app_database.dart';
import 'package:drift/drift.dart';

import 'books_table.dart';
import 'categories_table.dart';

part 'categories_dao.g.dart';

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
