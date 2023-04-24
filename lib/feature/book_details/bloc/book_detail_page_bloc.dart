// Импорт необходимых библиотек и файлов
import 'package:bloc/bloc.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Импорт миксина SetStateMixin
import '../../../core/bloc/set_state_mixin.dart';

// Импорт модели книги
import '../model/book_model.dart';

// Импорт сгенерированных файлов событий, состояний и блока
part 'book_detail_page_event.dart';
part 'book_detail_page_state.dart';
part 'book_detail_page_bloc.freezed.dart';

/// В этом коде определен класс BookDetailPageBloc,
/// который является BLoC-компонентом, используемым для управления состоянием
/// страницы подробной информации о книге в приложении.
/// Этот класс наследуется от Bloc<BookDetailPageEvent, BookDetailPageState>
/// и реализует SetStateMixin<BookDetailPageState>, чтобы упростить обновление состояния.

// Создание класса BookDetailPageBloc
class BookDetailPageBloc extends Bloc<BookDetailPageEvent, BookDetailPageState>
    with SetStateMixin<BookDetailPageState> {
  // Объявление переменной для хранения репозитория книг
  final BooksRepository _booksRepository;

  // Конструктор класса BookDetailPageBloc
  BookDetailPageBloc({
    required BooksRepository booksRepository,
  })  : _booksRepository = booksRepository,
        super(
          const BookDetailPageState.processing(
            book: null,
            anotherBooksFromSameAuthor: [],
            booksWithSameCategory: [],
          ),
        ) {
    // Определение действий, которые выполняются при получении события
    on<BookDetailPageEvent>((event, emit) {
      event.map(
        started: (event) => _started(event, emit),
        read: (event) => _read(event, emit),
        addToFavorites: (event) => _addToFavorites(event, emit),
        deleteBook: (event) => _deleteBook(event, emit),
      );
    });
  }

  /// _started: запускается при инициализации страницы подробной информации
  /// о книге и получает подробную информацию о книге из репозитория BooksRepository
  /// Затем он получает другие книги от того же автора и книги с той же категорией.
  /// После этого он изменяет дату последнего открытия книги и обновляет состояние.
  Future<void> _started(
    _Started event,
    Emitter<BookDetailPageState> emit,
  ) async {
    // Установка состояния в "processing", чтобы показать пользователю, что данные загружаются
    setState(
      BookDetailPageState.processing(
        book: state.book,
        anotherBooksFromSameAuthor: state.anotherBooksFromSameAuthor,
        booksWithSameCategory: state.booksWithSameCategory,
      ),
    );

    // Получение данных о книге и ее авторе
    final book = await _booksRepository.getBookDetails(
      event.bookId,
    );

    // Получение списка других книг того же автора, что и выбранная книга
    final anotherBooks = await _booksRepository.getBookFromSameAuthor(
      author: book.author,
    );

    // Удаление выбранной книги из списка других книг автора
    anotherBooks.removeWhere(
      (element) => element.id == book.id,
    );

    // Получение списка книг с той же категорией, что и выбранная книга
    final booksWithSameCategory = await _booksRepository.getBooksByCategory(
      category: book.category,
    );

    // Изменение времени последнего открытия книги
    await _booksRepository.changeLastOpenedAt(
      book.id,
    );

    /// Этот код вызывает метод setState из SetStateMixin для обновления
    /// состояния блока BookDetailPageBloc. Он устанавливает новое состояние
    /// BookDetailPageState.idle, передавая в него объект книги book,
    /// список других книг от того же автора anotherBooksFromSameAuthor
    /// и список книг с той же категорией booksWithSameCategory.
    /// Обновление состояния приведет к перерисовке соответствующих виджетов
    /// в пользовательском интерфейсе, которые отображают данные книги и ее сопутствующую информацию.
    setState(
      BookDetailPageState.idle(
        book: book,
        anotherBooksFromSameAuthor: anotherBooks,
        booksWithSameCategory: booksWithSameCategory,
      ),
    );
  }

  Future<void> _read(
    _Read event,
    Emitter<BookDetailPageState> emit,
  ) async {}

  /// Метод _addToFavorites изменяет состояние книги, добавляя ее в избранное
  /// или удаляя ее из списка избранных, используя метод changeFavorite из BooksRepository.
  Future<void> _addToFavorites(
    _AddToFavorites event,
    Emitter<BookDetailPageState> emit,
  ) async {
    await _booksRepository.changeFavorite(
      state.book!.id,
    );

    /// Затем метод вызывает setState для обновления состояния блока,
    /// передавая новое состояние BookDetailPageState.idle. В новом состоянии книга заменяется
    /// на копию, у которой свойство isFavorite изменяется на противоположное значение от текущего состояния.
    /// Это означает, что если книга ранее не была в избранном, то ее свойство isFavorite устанавливается
    /// в true, и наоборот, если она уже была в избранном, то свойство устанавливается в false.
    /// Также в новом состоянии сохраняются другие книги от того же автора anotherBooksFromSameAuthor,
    /// чтобы они не изменялись.
    setState(
      BookDetailPageState.idle(
        book: state.book!.copyWith(
          isFavorite: !state.book!.isFavorite,
        ),
        anotherBooksFromSameAuthor: state.anotherBooksFromSameAuthor,
      ),
    );
  }

  /// Этот метод _deleteBook используется для удаления книги из хранилища.
  /// Он принимает событие _DeleteBook, которое содержит идентификатор книги,
  /// которую необходимо удалить.
  Future<void> _deleteBook(
    _DeleteBook event,
    Emitter<BookDetailPageState> emit,
  ) async {
    /// В этом методе он вызывает метод _booksRepository.deleteBook, чтобы удалить книгу из хранилища.
    await _booksRepository.deleteBook(
      state.book!.id,
    );

    /// Затем он вызывает setState, чтобы обновить состояние блока BookDetailPageBloc.
    /// Он устанавливает новое состояние BookDetailPageState.successfullyDeleted,
    /// указывая, что книга была успешно удалена, и передает ему текущие данные о книге,
    /// другие книги от того же автора и книги с той же категорией, которые были сохранены
    /// в текущем состоянии блока.
    setState(
      BookDetailPageState.successfullyDeleted(
        book: state.book,
        anotherBooksFromSameAuthor: state.anotherBooksFromSameAuthor,
        booksWithSameCategory: state.booksWithSameCategory,
      ),
    );
  }
}
