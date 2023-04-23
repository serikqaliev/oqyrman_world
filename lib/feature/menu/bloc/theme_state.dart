part of 'theme_bloc.dart';

/* Theme States */

@freezed
class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState.idle({
    @Default(false) final bool isDarkTheme,
  }) = _Idle;
}
