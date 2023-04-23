part of 'book_detail_page_bloc.dart';

/* BookDetailPage States */

@freezed
class BookDetailPageState with _$BookDetailPageState {
  const BookDetailPageState._();

  /// Idling state
  const factory BookDetailPageState.idle({
    @Default(null) final BookModel? book,
    @Default([]) final List<BookModel> anotherBooksFromSameAuthor,
    @Default('Idle') final String message,
  }) = IdleBookDetailPageState;

  /// Processing
  const factory BookDetailPageState.processing({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    @Default('Processing') final String message,
  }) = ProcessingBookDetailPageState;

  /// Successful
  const factory BookDetailPageState.successful({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    @Default('Successful') final String message,
  }) = SuccessfulBookDetailPageState;

  const factory BookDetailPageState.successfullyDeleted({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    @Default('Successful') final String message,
  }) = SuccessfullyDeletedBookDetailPageState;

  /// An error has occurred
  const factory BookDetailPageState.error({
    required final BookModel? book,
    required final List<BookModel> anotherBooksFromSameAuthor,
    @Default('Error') final String message,
  }) = ErrorBookDetailPageState;

  /// Has data
  bool get hasData => book != null;

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
