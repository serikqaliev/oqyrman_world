import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/new_book_bloc.dart';

/// Данный код представляет собой виджет формы ввода данных книги,
/// который содержит три поля для ввода текста: название книги, имя автора и описание книги.

/// Когда пользователь вводит данные в текстовое поле, вызывается соответствующий обработчик событий,
/// который создает новое событие и передает данные в BLoC (бизнес-логику), чтобы обработать их.
/// BLoC используется для управления состоянием приложения, и когда происходят изменения в BLoC,
/// они обновляются в соответствии с интерфейсом пользователя.

/// Данный код является хорошим примером использования архитектуры BLoC в приложениях на Flutter.
/// Он также показывает, как можно использовать контроллеры текстовых полей для сохранения введенных
/// пользователем данных и как правильно очищать их после использования для избежания утечек памяти.

class NewBookTextFields extends StatefulWidget {
  const NewBookTextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<NewBookTextFields> createState() => _NewBookTextFieldsState();
}

class _NewBookTextFieldsState extends State<NewBookTextFields> {
  late final TextEditingController _titleController;

  late final TextEditingController _authorController;

  late final TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _authorController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _titleController,
          onChanged: (value) {
            context.read<NewBookBloc>().add(
                  NewBookEvent.changeTitle(
                    title: value,
                  ),
                );
          },
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(
              8,
            ),
            hintText: 'Кітаптың атауы',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          onChanged: (value) {
            context.read<NewBookBloc>().add(
                  NewBookEvent.changeAuthor(
                    author: value,
                  ),
                );
          },
          controller: _authorController,
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(
              8,
            ),
            hintText: 'Кітаптың авторы',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          controller: _descriptionController,
          onChanged: (value) {
            context.read<NewBookBloc>().add(
                  NewBookEvent.changeDescription(
                    description: value,
                  ),
                );
          },
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(8),
            hintText: 'Кітаптың сипаттамасы',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
