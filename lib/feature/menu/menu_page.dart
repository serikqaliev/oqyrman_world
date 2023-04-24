import 'package:books_app/feature/menu/bloc/menu_bloc.dart';
import 'package:books_app/feature/menu/widget/favorites_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/theme_bloc.dart';

/// В данном файле описывается страница меню (MenuPage),
/// которая содержит два виджета: FavoritesTile и ListTile.

/// FavoritesTile представляет собой кастомный виджет, который, вероятно,
/// отображает избранные элементы.

/// ListTile - это виджет списка, который содержит иконку (Icon),
/// переключатель (Switch) и текстовое поле (Text), которые предназначены
/// для управления темой приложения (светлая или темная тема).

/// В начале кода подключаются библиотеки (import) для работы с различными функциями и виджетами,
/// которые используются в коде.

/// Внутри класса MenuPage определен метод build, который возвращает Scaffold,
/// содержащий AppBar и _MenuPageBody.

/// Внутри класса _MenuPageBody определен метод build, который возвращает Column,
/// содержащий FavoritesTile и ListTile.

/// Внутри ListTile используется BlocSelector, который позволяет подписаться
/// на состояние ThemeBloc и получить информацию о том, какая тема в настоящее время выбрана.

/// Если пользователь переключает переключатель, вызывается метод onChanged,
/// который в свою очередь отправляет событие ThemeEvent.changeTheme в ThemeBloc.

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<MenuBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Баптаулар',
          ),
          backgroundColor: const Color(0xFF698809),
          centerTitle: true,
        ),
        body: const _MenuPageBody(),
      ),
    );
  }
}

class _MenuPageBody extends StatelessWidget {
  const _MenuPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FavoritesTile(),
        ListTile(
          leading: const Icon(
            Icons.dark_mode,
            color: Colors.yellow,
          ),
          minLeadingWidth: 24,
          trailing: BlocSelector<ThemeBloc, ThemeState, bool>(
            selector: (state) {
              return state.isDarkTheme;
            },
            builder: (context, isDarkTheme) {
              return Switch(
                value: isDarkTheme,
                onChanged: (value) {
                  context.read<ThemeBloc>().add(
                        const ThemeEvent.changeTheme(),
                      );
                },
              );
            },
          ),
          title: const Text(
            'Қараңғы режимі',
          ),
        ),
      ],
    );
  }
}
