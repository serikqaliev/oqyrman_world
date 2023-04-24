part of 'home_page_bloc.dart';

/// События, которые могут возникнуть в приложении, определены в классе HomePageEvent.
/// Они включают started (начало работы), bookAdded (добавление книги) и addToFavorites (добавление в избранное).

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started() = _Started;
  const factory HomePageEvent.bookAdded() = _BookAdded;
  const factory HomePageEvent.addToFavorites({
    required final BookModel book,
  }) = _AddToFavorites;
}
