import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/new_book_bloc.dart';

/// Данный код содержит определение виджета `SaveBookButton`, который использует Flutter Bloc
/// для управления состоянием.

/// `SaveBookButton` является кнопкой FloatingActionButton, которая будет отображаться на экране.
/// Кнопка может быть в двух состояниях - активной или неактивной, и это зависит от состояния `NewBookBloc`.

/// Класс `BlocSelector` используется для прослушивания состояния `NewBookBloc` и выбора
/// из него значения `canSave`, которое является булевым значением, указывающим, можно ли сохранить новую книгу.
/// Если `canSave` равно `true`, кнопка будет активной и ее фон будет иметь зеленый цвет.
/// Если `canSave` равно `false`, кнопка будет неактивной и ее фон будет иметь серый цвет.

/// Когда пользователь нажимает на кнопку, метод `onPressed` вызывает метод `context.read<NewBookBloc>().add(...)`,
/// чтобы добавить новое событие `NewBookEvent.save()` в блок `NewBookBloc`.

class SaveBookButton extends StatelessWidget {
  const SaveBookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NewBookBloc, NewBookState, bool>(
      selector: (state) {
        return state.canSave;
      },
      builder: (context, canSave) {
        return FloatingActionButton(
          backgroundColor: canSave ? const Color(0xFF698809) : Colors.grey,
          onPressed: () {
            context.read<NewBookBloc>().add(
                  const NewBookEvent.save(),
                );
          },
          child: const Icon(
            Icons.check,
          ),
        );
      },
    );
  }
}
