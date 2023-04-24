import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/book_detail_page_bloc.dart';

/// Данный код является классом Flutter виджета ChangeFavoritesButton, который реализует кнопку, позволяющую добавить или удалить книгу из избранного.
class ChangeFavoritesButton extends StatelessWidget {
  const ChangeFavoritesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// В методе build виджета происходит создание BlocSelector, который подписывается на изменения состояния BookDetailPageBloc. Selector возвращает значение isFavorite - булевое значение, показывающее, является ли книга избранной.
    return BlocSelector<BookDetailPageBloc, BookDetailPageState, bool?>(
      selector: (state) {
        return state.book?.isFavorite;
      },
      builder: (context, isFavorite) {
        /// Если значение isFavorite равно null, то виджет возвращает пустой контейнер SizedBox.shrink(). В противном случае, виджет создает IconButton, который при нажатии вызывает метод добавления книги в избранное, используя метод read<BookDetailPageBloc>().
        if (isFavorite == null) {
          return const SizedBox.shrink();
        }

        return IconButton(
          onPressed: () {
            context.read<BookDetailPageBloc>().add(
                  const BookDetailPageEvent.addToFavorites(),
                );
          },

          /// Иконка в кнопке меняется в зависимости от того, является ли книга избранной или нет. Если она избранная, то в кнопке будет отображаться иконка сердечка (Icons.favorite), иначе - иконка пустого сердечка (Icons.favorite_border).
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
          ),
        );
      },
    );
  }
}
