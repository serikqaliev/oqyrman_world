import '../../../core/database/app_database.dart';
import 'package:drift/drift.dart';

import 'books_table.dart';
import 'categories_table.dart';

part 'books_dao.g.dart';

/// Этот файл содержит определение класса [BooksDao],
/// который является интерфейсом для доступа к таблице книг в базе данных приложения.

/// Этот класс использует библиотеку [Drift] для генерации [SQL]-кода для выполнения запросов
/// к базе данных. Конкретно, он определяет методы для выполнения различных запросов,
/// таких как [getAllBooks()], [getBookById()], [insertBook()], [deleteBook()], [getFavoriteBooks()],
/// [getLastOpenedBooks()] и т.д.

/// Эти методы генерируют соответствующий [SQL]-код, используя таблицы [Books] и [Categories],
/// которые были определены в файле [books_table.dart] и [categories_table.dart] соответственно.

/// Класс [BooksDao] также аннотирован с помощью [@DriftAccessor] для генерации кода доступа
/// к базе данных на основе таблиц, которые определены в tables аргументе. Код доступа
/// к базе данных генерируется автоматически для этого класса и используется для выполнения
/// запросов к базе данных.

@DriftAccessor(tables: [Books, Categories])
class BooksDao extends DatabaseAccessor<AppDatabase> with _$BooksDaoMixin {
  BooksDao(AppDatabase db) : super(db);

  Future<List<Book>> getAllBooks() {
    return select(books).get();
  }

  Future<Book?> getBookById(int id) {
    return (select(books)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertBook(BooksCompanion book) {
    return into(books).insert(book);
  }

  Future<bool> updateBook(Book book) {
    return update(books).replace(book);
  }

  Future<int> deleteBook(Book book) {
    return delete(books).delete(book);
  }

  Future<int> deleteBookById(int id) {
    return (delete(books)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteAllBooks() {
    return delete(books).go();
  }

  Future<int> deleteAllBooksByIds(List<int> ids) {
    return (delete(books)..where((tbl) => tbl.id.isIn(ids))).go();
  }

  Future<List<Book>> getFavoriteBooks() {
    return (select(books)..where((tbl) => tbl.isFavorite.equals(true))).get();
  }

  Future<List<Book>> getLastOpenedBooks() {
    return (select(books)
          ..where((tbl) => tbl.lastOpenedAt.isNotNull())
          ..orderBy([(tbl) => OrderingTerm.desc(tbl.lastOpenedAt)]))
        .get();
  }

  Future<List<Book>> getBooksByCategory(String category) {
    return (select(books)..where((tbl) => tbl.category.equals(category))).get();
  }

  Future<List<Book>> getBooksByCategories(List<String> categories) {
    return (select(books)..where((tbl) => tbl.category.isIn(categories))).get();
  }

  Future<void> changeFavorite(int id) async {
    final book = await getBookById(id);
    if (book != null) {
      await updateBook(
        book.copyWith(isFavorite: !book.isFavorite),
      );
    }
  }

  // Change lastOpenedAt to current time
  Future<void> changeLastOpenedAt(int id) async {
    final book = await getBookById(id);
    if (book != null) {
      await updateBook(
        book.copyWith(
            lastOpenedAt: Value(
          DateTime.now(),
        )),
      );
    }
  }

  Future<List<Book>> getBooksByAuthor(String author) {
    return (select(books)..where((tbl) => tbl.author.equals(author))).get();
  }
}
