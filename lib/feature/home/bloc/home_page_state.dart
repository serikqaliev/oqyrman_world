part of 'home_page_bloc.dart';

/// Это файл с объявлением состояний (states) для класса `HomePageBloc`.
/// Он содержит объявление четырех различных состояний, которые могут возникнуть
/// в процессе работы данного блока:
/// - `IdleHomePageState` - состояние простоя, когда нет активных операций;
/// - `ProcessingHomePageState` - состояние обработки, когда выполняются какие-то действия;
/// - `SuccessfulHomePageState` - успешное состояние, когда все операции завершились успешно;
/// - `ErrorHomePageState` - состояние ошибки, когда произошла какая-то ошибка.

/// Каждое состояние содержит список последних открытых книг `lastOpenedBooks`,
/// список категорий `categories` и список всех книг `allBooks`. В состояниях `ProcessingHomePageState`,
/// `SuccessfulHomePageState` и `ErrorHomePageState` также есть сообщение `message`,
/// которое содержит информацию о том, что произошло.

/// Класс `HomePageState` также содержит некоторые методы и свойства,
/// такие как `booksIsEmpty`, `lastOpenedBooksEmpty`, `hasError`, `isIdling` и `isProcessing`,
/// которые позволяют получить информацию о текущем состоянии блока. Например, `booksIsEmpty`
/// возвращает true, если список всех книг пустой, и false в противном случае.

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  /// Idling state
  const factory HomePageState.idle({
    @Default([]) final List<BookModel> lastOpenedBooks,
    @Default([]) final List<CategoryModel> categories,
    @Default([]) final List<BookModel> allBooks,
    @Default('Idle') final String message,
  }) = IdleHomePageState;

  /// Processing
  const factory HomePageState.processing({
    required final List<BookModel> lastOpenedBooks,
    required final List<CategoryModel> categories,
    required final List<BookModel> allBooks,
    @Default('Processing') final String message,
  }) = ProcessingHomePageState;

  /// Successful
  const factory HomePageState.successful({
    required final List<BookModel> lastOpenedBooks,
    required final List<CategoryModel> categories,
    required final List<BookModel> allBooks,
    @Default('Successful') final String message,
  }) = SuccessfulHomePageState;

  /// An error has occurred
  const factory HomePageState.error({
    required final List<BookModel> lastOpenedBooks,
    required final List<CategoryModel> categories,
    required final List<BookModel> allBooks,
    @Default('An error has occurred') final String message,
  }) = ErrorHomePageState;

  bool get booksIsEmpty => allBooks.isEmpty;

  bool get lastOpenedBooksEmpty => lastOpenedBooks.isEmpty;

  /// If an error has occurred
  bool get hasError => maybeMap<bool>(
        orElse: () => false,
        error: (_) => true,
      );

  /// Is in idle state
  bool get isIdling => !isProcessing;

  /// Is in progress state
  bool get isProcessing => maybeMap<bool>(
        orElse: () => false,
        processing: (_) => true,
      );
}
