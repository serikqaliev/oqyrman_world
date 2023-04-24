part of 'book_detail_page_bloc.dart';

/// Этот код определяет события, которые могут происходить в блоке BookDetailPageBloc.

@freezed
class BookDetailPageEvent with _$BookDetailPageEvent {
  /// [BookDetailPageEvent.started] - событие, которое инициирует начальное состояние блока
  /// и передает идентификатор книги, которую нужно показать на странице.
  const factory BookDetailPageEvent.started({
    required final int bookId,
  }) = _Started;

  /// [BookDetailPageEvent.read] - событие, которое запускает процесс добавления записи в список "прочитанных" для этой книги.
  const factory BookDetailPageEvent.read() = _Read;

  /// [BookDetailPageEvent.addToFavorites] - событие, которое запускает процесс добавления/удаления книги в список "избранных".
  const factory BookDetailPageEvent.addToFavorites() = _AddToFavorites;

  /// [BookDetailPageEvent.deleteBook] - событие, которое запускает процесс удаления книги.
  const factory BookDetailPageEvent.deleteBook() = _DeleteBook;
}
