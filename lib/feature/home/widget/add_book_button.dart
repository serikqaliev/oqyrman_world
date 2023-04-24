import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../new_book/new_book_page.dart';
import '../bloc/home_page_bloc.dart';

/// Данный код создает кнопку "Добавить книгу". Когда пользователь нажимает на кнопку,
/// открывается страница для добавления новой книги. После добавления новой книги,
/// пользователь возвращается на страницу "Домашняя страница". Если книга была успешно добавлена,
/// то в состоянии блока "Домашняя страница" вызывается событие `HomePageEvent.bookAdded()`,
/// которое обновит список книг.

/// Для работы с состоянием используется пакет `flutter_bloc`,
/// а конкретно метод `context.read<HomePageBloc>()`, который позволяет получить доступ
/// к экземпляру блока "Домашняя страница".

/// `async` ключевое слово используется для того, чтобы приложение не зависало
/// при открытии страницы добавления книги и ожидании возвращения пользователя
/// на страницу "Домашняя страница".

/// `final bool? added` - эта переменная будет содержать результат возвращаемый
/// при закрытии страницы "Добавление новой книги". Если пользователь нажимает кнопку "Назад"
/// на странице добавления книги, то `added` будет равно `null`, иначе - `true`.

/// `mounted` - это свойство класса `State`, которое указывает, находится ли текущее состояние виджета
/// в "состоянии монтирования". Если `mounted` равен `true`, значит виджет существует и отображается на экране.

/// Иконка "add" отображается на кнопке.

class AddBookButton extends StatefulWidget {
  const AddBookButton({
    Key? key,
  }) : super(key: key);

  @override
  State<AddBookButton> createState() => _AddBookButtonState();
}

class _AddBookButtonState extends State<AddBookButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final bool? added = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NewBookPage(),
          ),
        );

        if (added != null && added) {
          if (mounted) {
            context.read<HomePageBloc>().add(
                  const HomePageEvent.bookAdded(),
                );
          }
        }
      },
      icon: const Icon(
        Icons.add,
      ),
    );
  }
}
