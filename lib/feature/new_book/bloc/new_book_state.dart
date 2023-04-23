part of 'new_book_bloc.dart';

/* NewBook States */

@freezed
class NewBookState with _$NewBookState {
  const NewBookState._();

  /// Idling state
  const factory NewBookState.idle({
    @Default('') final String title,
    @Default('') final String author,
    @Default('') final String? description,
    @Default(null) final CategoryModel? category,
    @Default([]) final List<CategoryModel> categories,
    @Default('') final String newCategoryTitle,
    @Default(null) final File? pdf,
    @Default('Idle') final String message,
  }) = IdleNewBookState;

  /// Processing
  const factory NewBookState.processing({
    required final String title,
    required final String author,
    required final String? description,
    @Default(null) final CategoryModel? category,
    @Default([]) final List<CategoryModel> categories,
    @Default('') final String newCategoryTitle,
    required final File? pdf,
    @Default('Processing') final String message,
  }) = ProcessingNewBookState;

  /// Successful
  const factory NewBookState.successful({
    required final String title,
    required final String author,
    required final String? description,
    required final CategoryModel category,
    @Default([]) final List<CategoryModel> categories,
    @Default('') final String newCategoryTitle,
    required final File? pdf,
    @Default('Successful') final String message,
  }) = SuccessfulNewBookState;

  /// An error has occurred
  const factory NewBookState.error({
    required final String title,
    required final String author,
    required final String? description,
    @Default(null) final CategoryModel? category,
    @Default([]) final List<CategoryModel> categories,
    @Default('') final String newCategoryTitle,
    required final File? pdf,
    @Default('An error has occurred') final String message,
  }) = ErrorNewBookState;

  bool get canSave =>
      title.isNotEmpty && author.isNotEmpty && pdf != null && category != null;

  bool get canAddNewCategory => newCategoryTitle.isNotEmpty;

  bool get isCategoriesEmpty => categories.isEmpty;

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
