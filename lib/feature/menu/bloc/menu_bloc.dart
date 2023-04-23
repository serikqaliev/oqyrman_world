import 'package:bloc/bloc.dart';
import 'package:books_app/core/bloc/set_state_mixin.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState>
    with SetStateMixin<MenuState> {
  final BooksRepository _booksRepository;

  MenuBloc({
    required BooksRepository booksRepository,
  })  : _booksRepository = booksRepository,
        super(const MenuState.idle()) {
    on<MenuEvent>((event, emit) {
      event.map(
        started: (event) => _started(event, emit),
        changeFavorite: (event) => _changeFavorite(event, emit),
      );
    });
  }

  Future<void> _started(
    _Started event,
    Emitter<MenuState> emit,
  ) async {
    final favoriteBooks = await _booksRepository.getFavoriteBooks();
    final lastOpenedBooks = await _booksRepository.getLastOpenedBooks();

    setState(
      MenuState.idle(
        favoriteBooks: favoriteBooks,
        lastOpenedBooks: lastOpenedBooks,
      ),
    );
  }

  Future<void> _changeFavorite(
    _ChangeFavorite event,
    Emitter<MenuState> emit,
  ) async {
    final book = event.book;

    await _booksRepository.changeFavorite(book.id);

    final favoriteBooks = await _booksRepository.getFavoriteBooks();
    final lastOpenedBooks = await _booksRepository.getLastOpenedBooks();

    setState(
      MenuState.idle(
        favoriteBooks: favoriteBooks,
        lastOpenedBooks: lastOpenedBooks,
      ),
    );
  }
}
