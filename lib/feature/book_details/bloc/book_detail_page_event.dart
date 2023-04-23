part of 'book_detail_page_bloc.dart';

@freezed
class BookDetailPageEvent with _$BookDetailPageEvent {
  const factory BookDetailPageEvent.started({
    required final int bookId,
  }) = _Started;
  const factory BookDetailPageEvent.read() = _Read;
  const factory BookDetailPageEvent.addToFavorites() = _AddToFavorites;
  const factory BookDetailPageEvent.deleteBook() = _DeleteBook;
}
