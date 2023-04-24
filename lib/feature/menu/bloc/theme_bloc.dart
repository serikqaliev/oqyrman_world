import 'package:bloc/bloc.dart';
import 'package:books_app/core/bloc/set_state_mixin.dart';
import 'package:books_app/feature/menu/repository/theme_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

/// Данный код представляет собой реализацию блока (BLoC) в пакете Flutter для управления темой приложения.

/// Класс `ThemeBloc` наследует от `Bloc<ThemeEvent, ThemeState>` и включает в себя миксин
/// `SetStateMixin<ThemeState>`.

/// `Bloc` - это шаблон для управления состоянием приложения, который получает события (event),
/// обрабатывает их и выдает состояния (state).

/// `SetStateMixin` - это миксин, который обеспечивает возможность изменения состояния блока
/// при помощи функции `setState`.

/// `ThemeBloc` принимает в конструкторе экземпляр `ThemeRepository`, который отвечает
/// за сохранение и загрузку темы приложения.

/// `on<ThemeEvent>` обрабатывает события блока, такие как `changeTheme` и `started`.
/// При получении события `changeTheme`, блок вызывает функцию `changeTheme()` из `ThemeRepository`,
/// чтобы изменить тему приложения, а затем получает текущее состояние темы и обновляет состояние блока
/// при помощи функции `setState`.

/// При получении события `started`, блок получает текущее состояние темы и устанавливает его
/// при помощи функции `setState`.

/// Код использует библиотеку `freezed_annotation`, чтобы создать классы суммарных типов (sum types)
/// `ThemeEvent` и `ThemeState`, которые описывают все возможные события и состояния,
/// которые могут быть использованы в блоке, и сгенерировать соответствующий код.

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
