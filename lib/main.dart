import 'package:books_app/core/logic/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/home/bloc/home_page_bloc.dart';
import 'feature/menu/bloc/menu_bloc.dart';
import 'feature/menu/bloc/theme_bloc.dart';
import 'feature/root/root_page.dart';

/// Этот код является входной точкой для приложения Flutter. Он содержит класс `MyApp`,
/// который наследуется от класса `StatefulWidget` и создает экземпляр класса `_MyAppState`,
/// который наследуется от класса `State<MyApp>`.

/// В методе `build` этого класса происходит создание виджета `FutureBuilder`,
/// который загружает зависимости с помощью пакета `get_it` и предоставляет их в виде `MultiBlocProvider`
/// для всех экземпляров `Bloc` в приложении. Также в этом методе происходит настройка темы приложения
/// на основе текущего состояния темы, которое управляется `ThemeBloc`.

/// В целом, этот код использует архитектуру Bloc и пакет `get_it` для управления зависимостями в приложении.
/// Он также демонстрирует использование `FutureBuilder` для асинхронной загрузки данных и настройки приложения
/// на основе загруженных данных.

void main() async {
  setup();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt.allReady(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                lazy: false,
                create: (context) => getIt<ThemeBloc>()
                  ..add(
                    const ThemeEvent.started(),
                  ),
              ),
              BlocProvider(
                create: (context) => getIt<HomePageBloc>()
                  ..add(
                    const HomePageEvent.started(),
                  ),
              ),
              BlocProvider(
                create: (context) => getIt<MenuBloc>()
                  ..add(
                    const MenuEvent.started(),
                  ),
              ),
            ],
            child: BlocSelector<ThemeBloc, ThemeState, bool>(
              selector: (state) {
                return state.isDarkTheme;
              },
              builder: (context, isDarkTheme) {
                debugPrint(isDarkTheme.toString());
                return MaterialApp(
                  title: 'Oqyrman World',
                  theme: ThemeData.light(),
                  darkTheme: ThemeData.dark(),
                  themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
                  builder: (context, child) {
                    return MediaQuery(
                      data: MediaQueryData.fromWindow(
                        WidgetsBinding.instance.window,
                      ).copyWith(
                        textScaleFactor: 1.0,
                      ),
                      child: child!,
                    );
                  },
                  home: const RootPage(),
                );
              },
            ),
          );
        }
        return Container(
          color: Colors.white,
        );
      },
    );
  }
}
