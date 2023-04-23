import 'package:books_app/feature/home/widget/books_vertical_list.dart';
import 'package:books_app/feature/menu/bloc/menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../book_details/book_details_page.dart';
import '../home/bloc/home_page_bloc.dart';
import 'bloc/theme_bloc.dart';

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
          backgroundColor: Color(0xFF698809),
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
          onTap: () {
            Navigator.of(context).pushNamed('/books');
          },
        ),
      ],
    );
  }
}

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
