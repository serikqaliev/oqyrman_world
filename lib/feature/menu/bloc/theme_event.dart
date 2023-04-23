part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();

  const factory ThemeEvent.changeTheme() = _ChangeTheme;
  const factory ThemeEvent.started() = _Started;
}
