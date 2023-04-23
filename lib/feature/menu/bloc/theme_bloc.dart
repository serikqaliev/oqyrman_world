import 'package:bloc/bloc.dart';
import 'package:books_app/core/bloc/set_state_mixin.dart';
import 'package:books_app/feature/menu/repository/theme_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState>
    with SetStateMixin<ThemeState> {
  final ThemeRepository _themeRepository;

  ThemeBloc({
    required ThemeRepository themeRepository,
  })  : _themeRepository = themeRepository,
        super(const ThemeState.idle()) {
    on<ThemeEvent>((event, emit) {
      event.map(
        changeTheme: (event) => _changeTheme(event, emit),
        started: (event) => _started(event, emit),
      );
    });
  }

  Future<void> _changeTheme(
    event,
    Emitter<ThemeState> emit,
  ) async {
    await _themeRepository.changeTheme();

    final isDarkTheme = _themeRepository.isDarkTheme;

    setState(
      ThemeState.idle(
        isDarkTheme: isDarkTheme,
      ),
    );
  }

  Future<void> _started(
    event,
    Emitter<ThemeState> emit,
  ) async {
    final isDarkTheme = _themeRepository.isDarkTheme;

    setState(
      ThemeState.idle(
        isDarkTheme: isDarkTheme,
      ),
    );
  }
}
