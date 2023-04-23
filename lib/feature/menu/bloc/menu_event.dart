part of 'menu_bloc.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const MenuEvent._();

  const factory MenuEvent.started() = _Started;

  const factory MenuEvent.changeFavorite({
    required BookModel book,
  }) = _ChangeFavorite;
}
