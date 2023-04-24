import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render.dart';

import '../../book_details/model/book_model.dart';

/// Данный код представляет собой реализацию пользовательского интерфейса в приложении на Flutter,
/// позволяющего отображать список книг с обложками, заголовками и другой информацией.

/// Компонент BooksVerticalList - это стейтлесс-виджет, который отображает список книг.
/// Внутри него есть компонент ListView.separated, который отображает карточки книг
/// с помощью компонента BookCard.

/// Компонент BookCard - это стейтлесс-виджет, который отображает одну карточку книги.
/// В нем есть функция getImageFromPdf, которая извлекает обложку книги из PDF-файла, и отображает ее
/// в виде изображения. Для этого используется библиотека pdf_render. Компонент также содержит информацию о книге,
/// такую как заголовок, автор и описание.

/// Компонент _TitleAndAuthor - это приватный стейтлесс-виджет, который отображает заголовок и автора книги
/// в компоненте BookCard.

/// Компоненты BooksVerticalList, BookCard и _TitleAndAuthor являются составляющими пользовательского интерфейса,
/// который может использоваться для отображения списка книг с дополнительной информацией о них.

class BooksVerticalList extends StatelessWidget {
  const BooksVerticalList({
    Key? key,
    required this.books,
    required this.onChooseBook,
    required this.onAddToFavorites,
    required this.title,
    this.showFavoriteButton = true,
  }) : super(key: key);

  final List<BookModel> books;
  final Function(BookModel) onChooseBook;
  final Function(BookModel) onAddToFavorites;
  final String title;
  final bool showFavoriteButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            itemBuilder: (context, index) => BookCard(
              bookModel: books[index],
              onChooseBook: onChooseBook,
              onAddFavorites: onAddToFavorites,
              showFavoriteButton: showFavoriteButton,
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemCount: books.length,
          ),
        ),
      ],
    );
  }
}

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.bookModel,
    required this.onChooseBook,
    required this.onAddFavorites,
    this.showFavoriteButton = true,
  });

  final BookModel bookModel;
  final Function(BookModel) onChooseBook;
  final Function(BookModel) onAddFavorites;
  final bool showFavoriteButton;

  Future<ByteData?> getImageFromPdf(
    BookModel bookModel,
  ) async {
    final PdfDocument pdfDocument = await PdfDocument.openFile(
      bookModel.pdfFile.path,
    );
    final firstPage = await pdfDocument.getPage(1);

    final pageImage = await firstPage.render();

    final image = await pageImage.createImageDetached();

    final pngBytes = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );

    return pngBytes;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChooseBook(bookModel);
      },
      child: SizedBox(
        height: 96,
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 4 / 5,
                    child: FutureBuilder(
                      future: getImageFromPdf(
                        bookModel,
                      ),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Image.memory(
                            Uint8List.view(snapshot.data!.buffer),
                            fit: BoxFit.cover,
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF698809),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: _TitleAndAuthor(
                              bookModel: bookModel,
                            ),
                          ),
                          Visibility(
                            visible: showFavoriteButton,
                            child: GestureDetector(
                              onTap: () {
                                onAddFavorites(bookModel);
                              },
                              child: Icon(
                                bookModel.isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          )
                        ],
                      ),
                      if (bookModel.description != null)
                        Text(
                          bookModel.description!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleAndAuthor extends StatelessWidget {
  const _TitleAndAuthor({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bookModel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          bookModel.author,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12,
            color: Color(0xFF698809),
          ),
        ),
      ],
    );
  }
}
