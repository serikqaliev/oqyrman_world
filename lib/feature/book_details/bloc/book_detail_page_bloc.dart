import 'package:bloc/bloc.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/bloc/set_state_mixin.dart';
import '../model/book_model.dart';

part 'book_detail_page_event.dart';
part 'book_detail_page_state.dart';
part 'book_detail_page_bloc.freezed.dart';

class BookDetailPageBloc extends Bloc<BookDetailPageEvent, BookDetailPageState>
    with SetStateMixin<BookDetailPageState> {
  final BooksRepository _booksRepository;

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
    on<BookDetailPageEvent>((event, emit) {
      event.map(
        started: (event) => _started(event, emit),
        read: (event) => _read(event, emit),
        addToFavorites: (event) => _addToFavorites(event, emit),
        deleteBook: (event) => _deleteBook(event, emit),
      );
    });
  }

  Future<void> _started(
    _Started event,
    Emitter<BookDetailPageState> emit,
  ) async {
    setState(
      BookDetailPageState.processing(
        book: state.book,
        anotherBooksFromSameAuthor: state.anotherBooksFromSameAuthor,
        booksWithSameCategory: state.booksWithSameCategory,
      ),
    );

    final book = await _booksRepository.getBookDetails(
      event.bookId,
    );

    final anotherBooks = await _booksRepository.getBookFromSameAuthor(
      author: book.author,
    );

    anotherBooks.removeWhere(
      (element) => element.id == book.id,
    );

    final booksWithSameCategory = await _booksRepository.getBooksByCategory(
      category: book.category,
    );

    await _booksRepository.changeLastOpenedAt(
      book.id,
    );

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

  Future<void> _addToFavorites(
    _AddToFavorites event,
    Emitter<BookDetailPageState> emit,
  ) async {
    await _booksRepository.changeFavorite(
      state.book!.id,
    );

    setState(
      BookDetailPageState.idle(
        book: state.book!.copyWith(
          isFavorite: !state.book!.isFavorite,
        ),
        anotherBooksFromSameAuthor: state.anotherBooksFromSameAuthor,
      ),
    );
  }

  Future<void> _deleteBook(
    _DeleteBook event,
    Emitter<BookDetailPageState> emit,
  ) async {
    await _booksRepository.deleteBook(
      state.book!.id,
    );

    setState(
      BookDetailPageState.successfullyDeleted(
        book: state.book,
        anotherBooksFromSameAuthor: state.anotherBooksFromSameAuthor,
        booksWithSameCategory: state.booksWithSameCategory,
      ),
    );
  }
}
