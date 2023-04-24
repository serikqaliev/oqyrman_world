import 'package:bloc/bloc.dart';
import 'package:books_app/core/bloc/set_state_mixin.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

/// Данный код написан на языке Dart и является реализацией блок-класса (Bloc)
/// для управления состоянием экрана меню (Menu).

/// Bloc - это популярный паттерн в разработке мобильных приложений,
/// который используется для управления состоянием экранов и компонентов.
/// Он основан на принципе однонаправленного потока данных и позволяет разделить
/// бизнес-логику приложения от его представления.

/// В данном коде используется пакет bloc, который предоставляет базовые классы
/// и методы для реализации блоков. Класс MenuBloc наследуется от класса Bloc<MenuEvent, MenuState>,
/// который описывает типы событий и состояний, которые может обрабатывать блок.

/// Кроме того, класс MenuBloc имплементирует миксин SetStateMixin<MenuState>,
/// который добавляет метод setState() для установки нового состояния блока.

/// В конструкторе класса MenuBloc происходит инициализация полей и установка начального
/// состояния блока (MenuState.idle()). В методе on<MenuEvent>() происходит обработка событий,
/// которые могут поступать на блок.

/// Метод _started() вызывается при получении события started и загружает список избранных книг
/// и последних открытых книг из репозитория BooksRepository. Метод _changeFavorite() вызывается
/// при получении события changeFavorite и изменяет статус избранности книги в репозитории.

/// В обоих методах после выполнения операций происходит вызов метода setState(),
/// который устанавливает новое состояние блока MenuState, содержащее список избранных
/// и последних открытых книг.

/// Freezed Annotation (@freezed) - это пакет, который используется для генерации кода
/// для удобства работы с неизменяемыми (immutable) объектами. В данном коде он используется
/// для генерации классов MenuEvent, MenuState и MenuState.idle(), которые используются в блоке.

/// В целом, данный код представляет собой пример использования паттерна Bloc
/// для управления состоянием экрана меню в приложении.

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
