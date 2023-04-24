import 'package:books_app/core/logic/get_it.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/widget/change_favorites_button.dart';
import 'package:books_app/feature/book_details/widget/delete_book_button.dart';
import 'package:books_app/feature/book_details/widget/description_widget.dart';
import 'package:books_app/feature/book_details/widget/main_info_widget.dart';
import 'package:books_app/feature/home/widget/books_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/book_detail_page_bloc.dart';

/// В классе `BookDetailsPage` создается страница, на которой располагаются информация
/// о книге и ее описание. Также имеются дополнительные виджеты, такие как: кнопка изменения
/// избранного и кнопка удаления книги, которые находятся в AppBar.

/// В классе `_BookDetailsPageBody` создается контент страницы, который зависит от состояния приложения.
/// Если состояние пустое, то отображается индикатор загрузки, иначе - содержимое книги,
/// включая главную информацию, описание книги, книги того же автора и книги того же жанра.

/// Также присутствуют `BlocProvider`, `BlocListener` и `BlocSelector`, что связано
/// с использованием пакета Flutter Bloc для управления состоянием приложения.

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<BookDetailPageBloc>()
        ..add(
          BookDetailPageEvent.started(
            bookId: bookModel.id,
          ),
        ),
      child: WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop(true);
          return false;
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              bookModel.title,
            ),
            backgroundColor: const Color(0xFF698809),
            actions: const [
              ChangeFavoritesButton(),
              DeleteBookButton(),
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ),
          body: const _BookDetailsPageBody(),
        ),
      ),
    );
  }
}

class _BookDetailsPageBody extends StatelessWidget {
  const _BookDetailsPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String category =
        context.read<BookDetailPageBloc>().state.book?.category ?? '';

    return BlocListener<BookDetailPageBloc, BookDetailPageState>(
      listener: (context, state) {
        state.mapOrNull(
          successfullyDeleted: (state) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '${state.book?.title} кітабы cәтті жойылды',
                ),
              ),
            );
            Navigator.of(context).pop(true);
          },
        );
      },
      child: BlocSelector<BookDetailPageBloc, BookDetailPageState, BookModel?>(
        selector: (state) {
          return state.book;
        },
        builder: (context, book) {
          if (book == null) {
            return const Center(
              child: CircularProgressIndicator(
                color: Color(0xFF698809),
              ),
            );
          }
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: MainInfo(bookModel: book),
                ),
                const SizedBox(
                  height: 32,
                ),
                if (book.description != null && book.description!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Description(
                      description: book.description!,
                    ),
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Text(
                        '${book.author} басқа кітаптары',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF698809),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF698809),
                      ),
                    ),
                    BlocSelector<BookDetailPageBloc, BookDetailPageState,
                        List<BookModel>>(
                      selector: (state) {
                        return state.anotherBooksFromSameAuthor;
                      },
                      builder: (context, anotherBooksFromSameAuthor) {
                        if (anotherBooksFromSameAuthor.isEmpty) {
                          return const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'Табылмады',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }
                        return BooksHorizontalList(
                          books: anotherBooksFromSameAuthor,
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Text(
                        '$category жанрының басқа кітаптары',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF698809),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF698809),
                      ),
                    ),
                    BlocSelector<BookDetailPageBloc, BookDetailPageState,
                        List<BookModel>>(
                      selector: (state) {
                        return state.booksWithSameCategory;
                      },
                      builder: (context, booksWithSameCategory) {
                        if (booksWithSameCategory.isEmpty) {
                          return const Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Center(
                              child: Text(
                                'Табылмады',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }
                        return BooksHorizontalList(
                          books: booksWithSameCategory,
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
