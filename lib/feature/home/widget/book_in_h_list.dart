import 'package:books_app/feature/book_details/book_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../book_details/model/book_model.dart';
import '../bloc/home_page_bloc.dart';

/// Данный код представляет собой виджет `BookInHorizontalList`,
/// который является элементом горизонтального списка книг на главной странице приложения.
/// Он имеет входной параметр `bookModel`, который представляет модель книги.

/// `InkWell` используется для отслеживания нажатий на виджет и перехода на страницу деталей книги.
/// Когда пользователь нажимает на элемент списка, происходит переход на страницу `BookDetailsPage`,
/// где показываются подробные сведения о книге, которую выбрал пользователь.

/// Для показа изображения обложки книги используется `Image.memory`, которая принимает
/// байтовый массив изображения в качестве входного параметра. Если возникает ошибка загрузки изображения,
/// возвращается красный контейнер. В противном случае изображение подгоняется к размеру виджета
/// с помощью параметра `fit: BoxFit.cover`.

/// Если на странице `BookDetailsPage` были внесены изменения в информацию о книге,
/// то при возврате на главную страницу происходит обновление списка книг с помощью вызова метода `add`
/// из `HomePageBloc` с событием `HomePageEvent.bookAdded()`.

class BookInHorizontalList extends StatefulWidget {
  const BookInHorizontalList({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  State<BookInHorizontalList> createState() => _BookInHorizontalListState();
}

class _BookInHorizontalListState extends State<BookInHorizontalList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final bool needUpdate = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => BookDetailsPage(
              bookModel: widget.bookModel,
            ),
          ),
        );

        if (needUpdate && mounted) {
          context.read<HomePageBloc>().add(
                const HomePageEvent.bookAdded(),
              );
        }
      },
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AspectRatio(
            aspectRatio: 4 / 5,
            child: Image.memory(
              widget.bookModel.coverImage!,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.red,
                );
              },
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
