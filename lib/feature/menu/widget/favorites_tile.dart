import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../book_details/book_details_page.dart';
import '../../home/bloc/home_page_bloc.dart';
import '../../home/widget/books_vertical_list.dart';
import '../bloc/menu_bloc.dart';

/// Этот код относится к приложению для чтения книг и содержит виджет "FavoritesTile",
/// который является пунктом меню, отображающим список книг, добавленных пользователем в избранное.
/// Если список не пуст, пользователь может нажать на пункт меню, чтобы увидеть список избранных книг
/// в модальном окне. Если список пуст, будет показано всплывающее уведомление с предупреждением.

/// Когда пользователь выбирает книгу в списке избранных, вызывается метод "onChooseBook",
/// который открывает страницу с подробной информацией о книге. Если пользователь добавляет
/// или удаляет книгу из списка избранных, соответствующий список обновляется, и если список
/// становится пустым, модальное окно закрывается автоматически. Код использует flutter_bloc
/// для управления состоянием.

class FavoritesTile extends StatefulWidget {
  const FavoritesTile({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoritesTile> createState() => _FavoritesTileState();
}

class _FavoritesTileState extends State<FavoritesTile> {
  void showFavorites() {
    showModalBottomSheet(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<MenuBloc>(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<MenuBloc, MenuState>(
                  builder: (context, state) {
                    return BooksVerticalList(
                      title: 'Сіз ұнатқан кітаптар',
                      books: state.favoriteBooks,
                      onChooseBook: (book) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => BlocProvider.value(
                              value: context.read<MenuBloc>(),
                              child: BookDetailsPage(
                                bookModel: book,
                              ),
                            ),
                          ),
                        );
                      },
                      onAddToFavorites: (book) {
                        context.read<MenuBloc>().add(
                              MenuEvent.changeFavorite(book: book),
                            );

                        context.read<HomePageBloc>().add(
                              const HomePageEvent.bookAdded(),
                            );
                        if (state.favoriteBooks.length == 1) {
                          Navigator.of(context).pop();
                        }
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      minLeadingWidth: 24,
      trailing: const Icon(
        Icons.chevron_right,
      ),
      title: const Text(
        'Ұнатқан кітаптар',
      ),
      onTap: () {
        if (context.read<MenuBloc>().state.isFavoriteBooksNotEmpty) {
          showFavorites();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Сіз ұнатқан кітаптар жоқ. Қосыңыз',
              ),
            ),
          );
        }
      },
    );
  }
}
