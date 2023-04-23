part of 'menu_bloc.dart';

/* Menu States */

@freezed
class MenuState with _$MenuState {
  const MenuState._();

  const factory MenuState.idle({
    @Default([]) final List<BookModel> favoriteBooks,
    @Default([]) final List<BookModel> lastOpenedBooks,
    @Default('Idle') final String message,
  }) = IdleMenuState;

  const factory MenuState.processing({
    required final List<BookModel> favoriteBooks,
    required final List<BookModel> lastOpenedBooks,
    @Default('Processing') final String message,
  }) = ProcessingMenuState;

  const factory MenuState.successful({
    required final List<BookModel> favoriteBooks,
    required final List<BookModel> lastOpenedBooks,
    @Default('Successful') final String message,
  }) = SuccessfulMenuState;

  const factory MenuState.error({
    required final List<BookModel> favoriteBooks,
    required final List<BookModel> lastOpenedBooks,
    @Default('An error has occurred') final String message,
  }) = ErrorMenuState;

  bool get isFavoriteBooksNotEmpty => favoriteBooks.isNotEmpty;

  bool get isLastOpenedBooksNotEmpty => lastOpenedBooks.isNotEmpty;

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
