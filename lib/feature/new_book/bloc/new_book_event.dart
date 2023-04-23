part of 'new_book_bloc.dart';

@freezed
class NewBookEvent with _$NewBookEvent {
  const factory NewBookEvent.started() = _Started;

  const factory NewBookEvent.changeTitle({
    required final String title,
  }) = _ChangeTitle;

  const factory NewBookEvent.changeAuthor({
    required final String author,
  }) = _ChangeAuthor;

  const factory NewBookEvent.changeDescription({
    required final String description,
  }) = _ChangeDescription;

  const factory NewBookEvent.chooseCategory({
    required final CategoryModel category,
  }) = _ChangeCategory;

  const factory NewBookEvent.changeNewCategoryTitle({
    required final String newCategoryTitle,
  }) = _ChangeNewCategoryTitle;

  const factory NewBookEvent.addNewCategory() = _AddNewCategory;

  const factory NewBookEvent.choosePdf({
    required final File pdf,
  }) = _ChoosePdf;

  const factory NewBookEvent.save() = _Save;
}
