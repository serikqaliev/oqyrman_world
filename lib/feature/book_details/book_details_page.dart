import 'package:books_app/core/logic/get_it.dart';
import 'package:books_app/feature/book_details/model/book_model.dart';
import 'package:books_app/feature/book_details/widget/change_favorites_button.dart';
import 'package:books_app/feature/read_book/read_book_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/book_detail_page_bloc.dart';

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
            backgroundColor: Color(0xFF698809),
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

class _BookDetailsPageBody extends StatelessWidget {
  const _BookDetailsPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _MainInfo(bookModel: book),
                const SizedBox(
                  height: 32,
                ),
                if (book.description != null && book.description!.isNotEmpty)
                  _Description(
                    description: book.description!,
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${book.author}-дың басқа кітаптары',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF698809),
                      ),
                    ),
                    const Divider(
                      height: 16,
                      thickness: 2,
                      color: Color(0xFF698809),
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

class _Description extends StatelessWidget {
  const _Description({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Сипаттама',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF698809),
          ),
        ),
        const Divider(
          height: 16,
          thickness: 2,
          color: Color(0xFF698809),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}

class _MainInfo extends StatelessWidget {
  const _MainInfo({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 200,
              child: AspectRatio(
                aspectRatio: 4 / 5,
                child: Image.memory(
                  bookModel.coverImage!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.title,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      bookModel.author,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ReadBookPage(
                          bookModel: bookModel,
                        ),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Color(0xFF698809),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.menu_book_sharp,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Оқу'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
