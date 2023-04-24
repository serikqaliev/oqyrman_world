import 'dart:io';
import 'dart:ui' as ui;

import 'package:books_app/feature/book_details/database/categories_dao.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_render/pdf_render.dart';
import 'package:uuid/uuid.dart';

import '../../../core/database/app_database.dart';
import '../database/books_dao.dart';

/// Данный код представляет собой реализацию интерфейса `BooksRepository` для работы с базой данных.

/// Он содержит методы для получения, вставки, обновления и удаления книг, а также категорий
/// и управления списками "избранное" и "последние открытые".

/// В данном случае используется SQLite база данных с помощью `drift` пакета.

/// Некоторые из методов, которые реализованы в этом классе:
/// - `deleteAllBooks()`: удаляет все книги из базы данных.
/// - `deleteBook(int bookId)`: удаляет книгу с указанным `bookId` из базы данных.
/// - `getAllBooks()`: возвращает список всех книг в базе данных.
/// - `getBookDetails(int bookId)`: возвращает детали книги с указанным `bookId`.
/// - `insertBook()`: добавляет новую книгу в базу данных.
/// - `updateBookDetails()`: обновляет детали книги.
/// - `getAllCategories()`: возвращает список всех категорий в базе данных.
/// - `insertCategory()`: добавляет новую категорию в базу данных.
/// - `changeFavorite(int id)`: меняет статус "избранное" для книги с указанным `id`.

/// Также, в этом файле есть вспомогательные функции `bookEntitiesToBookModels` и `bookEntityToBookModel`,
/// которые используются для преобразования данных из базы данных в модели книги.

abstract class BooksRepository {
  Future<BookModel> getBookDetails(int bookId);
  Future<void> updateBookDetails(BookModel bookModel);
  Future<void> deleteBook(int bookId);
  Future<void> deleteAllBooks();
  Future<void> insertBook({
    required String title,
    required String author,
    required String? description,
    required CategoryModel category,
    required File pdf,
  });
  Future<List<BookModel>> getAllBooks();
  Future<List<BookModel>> getFavoriteBooks();
  Future<List<BookModel>> getLastOpenedBooks();
  Future<List<BookModel>> getBooksByCategory({
    required String category,
  });
  Future<List<BookModel>> getBookFromSameAuthor({required String author});
  Future<List<CategoryModel>> getAllCategories();

  Future<void> insertCategory(CategoryModel categoryModel);
  Future<void> changeFavorite(int id);
  Future<void> changeLastOpenedAt(int id);
}

class BooksRepositoryImpl implements BooksRepository {
  final BooksDao _booksDao;
  final CategoriesDao _categoriesDao;
  final Uuid _uuid = const Uuid();

  BooksRepositoryImpl({
    required BooksDao booksDao,
    required CategoriesDao categoriesDao,
  })  : _booksDao = booksDao,
        _categoriesDao = categoriesDao;

  @override
  Future<void> deleteAllBooks() => _booksDao.deleteAllBooks();

  @override
  Future<void> deleteBook(int bookId) => _booksDao.deleteBookById(bookId);

  @override
  Future<List<BookModel>> getAllBooks() async {
    final books = await _booksDao.getAllBooks();

    return await bookEntitiesToBookModels(books);
  }

  Future<List<BookModel>> bookEntitiesToBookModels(List<Book> books) async {
    final List<BookModel> bookModels = [];

    for (var i = 0; i < books.length; i++) {
      bookModels.add(
        await bookEntityToBookModel(books[i]),
      );
    }

    return bookModels;
  }

  Future<BookModel> bookEntityToBookModel(Book book) async {
    final pdfFile = File(book.filePath);
    final coverImageBytes = await _getImageFromPdf(
      pdfFile.path,
    );

    return BookModel(
      id: book.id,
      title: book.title.trim(),
      author: book.author.trim(),
      description: book.description,
      isFavorite: book.isFavorite,
      pdfFile: pdfFile,
      createdAt: book.createdAt,
      updatedAt: book.updatedAt,
      lastOpenedAt: book.lastOpenedAt,
      category: book.category.trim(),
      coverImage: coverImageBytes,
    );
  }

  @override
  Future<BookModel> getBookDetails(int bookId) async {
    final book = await _booksDao.getBookById(
      bookId,
    );

    return bookEntityToBookModel(book!);
  }

  @override
  Future<List<BookModel>> getFavoriteBooks() async {
    final books = await _booksDao.getFavoriteBooks();

    return await bookEntitiesToBookModels(books);
  }

  @override
  Future<List<BookModel>> getLastOpenedBooks() async {
    final books = await _booksDao.getLastOpenedBooks();

    return await bookEntitiesToBookModels(books);
  }

  @override
  Future<void> insertBook({
    required String title,
    required String author,
    required String? description,
    required CategoryModel category,
    required File pdf,
  }) async {
    Uint8List imageInUnit8List = await pdf.readAsBytes();
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/book${_uuid.v4()}.png').create();
    file.writeAsBytesSync(imageInUnit8List);

    await _booksDao.insertBook(
      BooksCompanion(
        category: Value(
          category.category.trim(),
        ),
        title: Value(
          title.trim(),
        ),
        author: Value(
          author.trim(),
        ),
        description: Value(
          description,
        ),
        filePath: Value(
          pdf.path,
        ),
        createdAt: Value(
          DateTime.now(),
        ),
      ),
    );
  }

  @override
  Future<void> updateBookDetails(BookModel bookModel) {
    // TODO: implement updateBookDetails
    throw UnimplementedError();
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final categories = await _categoriesDao.getAllCategories();

    final categoryModels = categories.map(
      (category) => CategoryModel(
        category: category.title.trim(),
      ),
    );

    return categoryModels.toList();
  }

  @override
  Future<void> insertCategory(CategoryModel categoryModel) =>
      _categoriesDao.insertCategory(
        Category(
          title: categoryModel.category.trim(),
        ),
      );

  @override
  Future<void> changeFavorite(int id) async {
    await _booksDao.changeFavorite(id);
  }

  Future<Uint8List?> _getImageFromPdf(String filePath) async {
    final PdfDocument pdfDocument = await PdfDocument.openFile(filePath);
    final firstPage = await pdfDocument.getPage(1);
    final pageImage = await firstPage.render();
    final image = await pageImage.createImageDetached();

    final pngBytes = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );

    return Uint8List.view(pngBytes!.buffer);
  }

  @override
  Future<List<BookModel>> getBookFromSameAuthor({
    required String author,
  }) async {
    final books = await _booksDao.getBooksByAuthor(author.trim());

    return await bookEntitiesToBookModels(books);
  }

  @override
  Future<void> changeLastOpenedAt(int id) => _booksDao.changeLastOpenedAt(id);

  @override
  Future<List<BookModel>> getBooksByCategory({required String category}) async {
    final books = await _booksDao.getBooksByCategory(category);

    return await bookEntitiesToBookModels(books);
  }
}
