import 'package:bloc/bloc.dart';
import 'package:books_app/core/bloc/set_state_mixin.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

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
