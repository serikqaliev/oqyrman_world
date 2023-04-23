import 'package:books_app/core/logic/get_it.dart';
import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:books_app/feature/book_details/repository/books_repository.dart';
import 'package:books_app/feature/home/widget/add_book_button.dart';
import 'package:books_app/feature/home/widget/categories_widget.dart';
import 'package:books_app/feature/home/widget/books_vertical_list.dart';
import 'package:books_app/feature/home/widget/books_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../book_details/book_details_page.dart';
import '../book_details/model/book_model.dart';
import '../menu/bloc/menu_bloc.dart';
import 'bloc/home_page_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<HomePageBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Oqyrman World',
          ),
          backgroundColor: Color(0xFF698809),
          centerTitle: true,
          actions: const [
            AddBookButton(),
          ],
        ),
        body: BlocSelector<HomePageBloc, HomePageState, bool>(
          selector: (state) {
            return state.isProcessing;
          },
          builder: (context, isProcessing) {
            if (isProcessing) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF698809),
                ),
              );
            }

            final booksIsEmpty = context.select<HomePageBloc, bool>(
              (bloc) => bloc.state.booksIsEmpty,
            );

            if (booksIsEmpty) {
              return const Center(
                child: Text(
                  'Кітаптар жоқ, қосу үшін + батырмасын басыңыз',
                ),
              );
            } else {
              return const _HomePageBody();
            }
          },
        ),
      ),
    );
  }
}

class _HomePageBody extends StatefulWidget {
  const _HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<_HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<_HomePageBody> {
  final BooksRepository _booksRepository = getIt<BooksRepository>();

  void showBooksByCategory({
    required String category,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (_) => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: _booksRepository.getBooksByCategory(
                  category: category,
                ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xFF698809),
                      ),
                    );
                  }
                  return BooksVerticalList(
                    showFavoriteButton: false,
                    title: '$category жанр кітаптары',
                    books: snapshot.data!,
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
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocSelector<HomePageBloc, HomePageState, List<BookModel>>(
          selector: (state) {
            return state.lastOpenedBooks;
          },
          builder: (context, lastOpenedBooks) {
            return BooksHorizontalList(
              books: lastOpenedBooks,
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        BlocSelector<HomePageBloc, HomePageState, List<CategoryModel>>(
          selector: (state) {
            return state.categories;
          },
          builder: (context, categories) {
            return CategoriesWidget(
              onPress: (category) {
                showBooksByCategory(
                  category: category.category,
                );
              },
              categories: categories,
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(
          child: _VerticalList(),
        ),
      ],
    );
  }
}

class _VerticalList extends StatefulWidget {
  const _VerticalList({
    Key? key,
  }) : super(key: key);

  @override
  State<_VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<_VerticalList> {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomePageBloc, HomePageState, List<BookModel>>(
      selector: (state) {
        return state.allBooks;
      },
      builder: (context, books) {
        return BooksVerticalList(
          title: 'Барлық кітаптар',
          books: books,
          onAddToFavorites: (bookModel) {
            context.read<HomePageBloc>().add(
                  HomePageEvent.addToFavorites(
                    book: bookModel,
                  ),
                );

            context.read<MenuBloc>().add(
                  const MenuEvent.started(),
                );
          },
          onChooseBook: (BookModel book) async {
            final bool needUpdate = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BookDetailsPage(
                  bookModel: book,
                ),
              ),
            );

            if (needUpdate && mounted) {
              context.read<HomePageBloc>().add(
                    const HomePageEvent.bookAdded(),
                  );
            }
          },
        );
      },
    );
  }
}
