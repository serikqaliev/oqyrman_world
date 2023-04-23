part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started() = _Started;
  const factory HomePageEvent.bookAdded() = _BookAdded;
  const factory HomePageEvent.addToFavorites({
    required final BookModel book,
  }) = _AddToFavorites;
}
