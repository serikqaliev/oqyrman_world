import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/book_detail_page_bloc.dart';

/// Класс `DeleteBookButton` представляет собой кнопку, при нажатии на которую
/// появляется диалоговое окно с сообщением о подтверждении удаления книги.
/// Если пользователь нажимает на кнопку "ОК", то книга удаляется из списка.
/// Если пользователь нажимает на кнопку "Болдырмау", то диалоговое окно закрывается без удаления книги.

/// Этот класс использует Flutter BLoC-пакет для управления состоянием.
/// Когда пользователь нажимает кнопку "ОК", он отправляет событие `deleteBook`
/// в BLoC `BookDetailPageBloc`, чтобы удалить книгу из списка. Кнопка "ОК" имеет
/// красный цвет, а значок на ней - `Icons.delete`.

class DeleteBookButton extends StatelessWidget {
  const DeleteBookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: const Text(
                'Кітапты жою',
              ),
              content: const Text(
                'Кітапты жою үшін ОК батырмасын басыңыз. Қайтару мүмкін емес',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Болдырмау',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    context.read<BookDetailPageBloc>().add(
                          const BookDetailPageEvent.deleteBook(),
                        );
                  },
                  child: const Text(
                    'ОК',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    );
  }
}
