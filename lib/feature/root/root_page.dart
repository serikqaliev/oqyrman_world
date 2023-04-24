import 'package:books_app/feature/home/home_page.dart';
import 'package:books_app/feature/menu/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home/bloc/home_page_bloc.dart';
import '../menu/bloc/menu_bloc.dart';

/// Данный код представляет собой реализацию главного экрана приложения.
/// Он состоит из двух страниц: главной и меню. Внизу экрана находится навигационная панель,
/// где пользователь может переключаться между страницами.

/// Класс RootPage является StatefulWidget и создает экземпляр класса _RootPageState.
/// В этом классе создается список screens, который содержит две страницы (HomePage и MenuPage)
/// и инициализируется переменная selectedIndex, указывающая на выбранную в данный момент страницу.

/// В методе build создается Scaffold, в котором определяется тело приложения и навигационная панель.
/// В теле приложения используется IndexedStack, который отображает только один элемент списка screens
/// в зависимости от значения selectedIndex.

/// В навигационной панели определяется BottomNavigationBar, содержащий две иконки и текстовые метки
/// для каждой страницы. При выборе пользователем одной из иконок с помощью метода onTap меняется
/// значение selectedIndex и вызываются методы add у блоков HomePageBloc и MenuBloc,
/// что позволяет начать выполнение необходимых операций в каждом блоке.

/// Используя Flutter Bloc, RootPage может получать и изменять состояние страниц приложения
/// в ответ на события, которые могут быть вызваны в других частях приложения.

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    const HomePage(),
    const MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF698809),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });

          context.read<HomePageBloc>().add(
                const HomePageEvent.started(),
              );

          context.read<MenuBloc>().add(
                const MenuEvent.started(),
              );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Басты',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Баптаулар',
          ),
        ],
      ),
    );
  }
}
