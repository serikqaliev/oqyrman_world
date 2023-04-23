part of 'home_page_bloc.dart';

/* HomePage States */

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
