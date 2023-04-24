import 'package:bloc/bloc.dart';
import 'package:books_app/core/bloc/set_state_mixin.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

/// Этот код представляет собой реализацию класса `HomePageBloc`,
/// который является частью архитектуры BLoC и используется для управления
/// состоянием домашней страницы в приложении.

/// `HomePageBloc` наследует от класса `Bloc` и реализует обобщенные типы `HomePageEvent`
/// и `HomePageState`. Он также использует `SetStateMixin` для упрощения обновления состояния.

/// Внутри `HomePageBloc` определены три метода: `_started`, `_bookAdded` и `_addToFavorites`.
/// Метод `_started` вызывается при запуске домашней страницы, чтобы загрузить данные с сервера,
/// а методы `_bookAdded` и `_addToFavorites` вызываются при добавлении книги и добавлении
/// в избранное соответственно.

/// Методы `_started`, `_bookAdded` и `_addToFavorites` вызываются при выполнении
/// соответствующих событий в `on` методе. Этот метод используется для определения,
/// какой метод должен быть вызван на основе типа события.

/// В методах `_started`, `_bookAdded` и `_addToFavorites` сначала устанавливается состояние `processing`,
/// а затем происходит загрузка данных с сервера и обновление состояния `idle`.

/// Таким образом, `HomePageBloc` предоставляет механизм для управления состоянием домашней страницы,
/// что помогает разработчикам легче разделять код и делает приложение более устойчивым к ошибкам.

class HomePageBloc extends Bloc<HomePageEvent, HomePageState>
    with SetStateMixin<HomePageState> {
  final BooksRepository _booksRepository;

  HomePageBloc({
    required BooksRepository booksRepository,
  })  : _booksRepository = booksRepository,
        super(
          const HomePageState.processing(
            allBooks: [],
            lastOpenedBooks: [],
            categories: [],
          ),
        ) {
    on<HomePageEvent>((event, emit) {
      event.map(
        started: (event) => _started(event, emit),
        bookAdded: (event) => _bookAdded(event, emit),
        addToFavorites: (event) => _addToFavorites(event, emit),
      );
    });
  }

  Future<void> _started(
    _Started event,
    Emitter<HomePageState> emit,
  ) async {
    setState(
      HomePageState.processing(
        allBooks: state.allBooks,
        lastOpenedBooks: state.lastOpenedBooks,
        categories: state.categories,
      ),
    );

    final books = await _booksRepository.getAllBooks();
    final lastOpenedBooks = await _booksRepository.getLastOpenedBooks();
    final List<CategoryModel> categories =
        await _booksRepository.getAllCategories();

    setState(
      HomePageState.idle(
        allBooks: books,
        lastOpenedBooks: lastOpenedBooks,
        categories: categories,
      ),
    );
  }

  Future<void> _bookAdded(
    _BookAdded event,
    Emitter<HomePageState> emit,
  ) async {
    setState(
      HomePageState.processing(
        allBooks: state.allBooks,
        lastOpenedBooks: state.lastOpenedBooks,
        categories: state.categories,
      ),
    );

    final books = await _booksRepository.getAllBooks();
    final lastOpenedBooks = await _booksRepository.getLastOpenedBooks();
    final List<CategoryModel> categories =
        await _booksRepository.getAllCategories();

    setState(
      HomePageState.idle(
        allBooks: books,
        lastOpenedBooks: lastOpenedBooks,
        categories: categories,
      ),
    );
  }

  Future<void> _addToFavorites(
    _AddToFavorites event,
    Emitter<HomePageState> emit,
  ) async {
    await _booksRepository.changeFavorite(event.book.id);

    final books = await _booksRepository.getAllBooks();
    final lastOpenedBooks = await _booksRepository.getLastOpenedBooks();

    setState(
      HomePageState.idle(
        allBooks: books,
        lastOpenedBooks: lastOpenedBooks,
        categories: state.categories,
      ),
    );
  }
}
