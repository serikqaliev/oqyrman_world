part of 'book_detail_page_bloc.dart';

/// Этот код содержит определение состояния, используемого в блоке BookDetailPageBloc.
/// Состояние описывает различные состояния, в которых может находиться страница
/// детальной информации о книге.

/// Каждое состояние определено как const фабрика в своей секции именованного объединения freezed.
/// Состояния включают в себя idle (ожидание), processing (обработка), successful (успешно),
/// successfullyDeleted (успешно удалено) и error (ошибка).

/// Каждое состояние имеет свои поля, такие как book, anotherBooksFromSameAuthor, booksWithSameCategory
/// и message, которые содержат информацию о книге, книгах других авторов, книгах в той же категории
/// и сообщениях, которые могут использоваться для передачи пользовательского интерфейса.

/// Кроме того, класс определяет несколько методов, которые могут быть использованы для проверки состояния
/// блока, таких как hasData (проверка на наличие данных), hasError (проверка на наличие ошибки),
/// isIdling (проверка на ожидание) и isProcessing (проверка на обработку).

@freezed
class BookDetailPageState with _$BookDetailPageState {
  const BookDetailPageState._();

  const factory BookDetailPageState.idle({
    @Default(null) final BookModel? book,
    @Default([]) final List<BookModel> anotherBooksFromSameAuthor,
    @Default([]) final List<BookModel> booksWithSameCategory,
    @Default('Idle') final String message,
  }) = IdleBookDetailPageState;

  const factory BookDetailPageState.processing({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    required final List<BookModel> booksWithSameCategory,
    @Default('Processing') final String message,
  }) = ProcessingBookDetailPageState;

  const factory BookDetailPageState.successful({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    required final List<BookModel> booksWithSameCategory,
    @Default('Successful') final String message,
  }) = SuccessfulBookDetailPageState;

  const factory BookDetailPageState.successfullyDeleted({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    required final List<BookModel> booksWithSameCategory,
    @Default('Successful') final String message,
  }) = SuccessfullyDeletedBookDetailPageState;

  const factory BookDetailPageState.error({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    required final List<BookModel> booksWithSameCategory,
    @Default('Error') final String message,
  }) = ErrorBookDetailPageState;

  bool get hasData => book != null;

  bool get hasError => maybeMap<bool>(
        orElse: () => false,
        error: (_) => true,
      );

  bool get isIdling => !isProcessing;

  bool get isProcessing => maybeMap<bool>(
        orElse: () => false,
        processing: (_) => true,
      );
}
