import 'package:flutter/material.dart';

import '../../book_details/model/book_model.dart';
import 'book_in_h_list.dart';

/// Данный код отвечает за отображение списка книг в виде горизонтального списка.
/// Виджет принимает список книг `books`, который должен быть отображен,
/// и необязательный заголовок `title`. Виджет состоит из `Visibility`, `Column`,
/// `Padding`, `Text`, `SizedBox` и `ListView.separated`.

/// `Visibility` принимает свойство `visible`, которое отвечает за видимость списка книг.
/// Если список пустой, то он не будет отображаться.

/// `Column` является родительским виджетом и содержит в себе `Padding`, `Text` и `SizedBox`,
/// а также сам `ListView.separated`.

/// `Padding` создает внутренние отступы для `Text`.

/// `Text` отображает заголовок `title`, если он передан в качестве параметра.

/// `SizedBox` создает пустое пространство между `Text` и `ListView.separated`.

/// `ListView.separated` создает горизонтальный список книг, которые передаются как параметр
/// `books`. `ListView.separated` создает отступы между элементами списка с помощью `separatorBuilder`.
/// Каждый элемент списка создается с помощью виджета `BookInHorizontalList`, который отображает обложку книги.

class BooksHorizontalList extends StatelessWidget {
  const BooksHorizontalList({
    Key? key,
    required this.books,
    this.title,
  }) : super(key: key);

  final List<BookModel> books;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: books.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                title!,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          SizedBox(
            height: 180,
            child: ListView.separated(
              padding: const EdgeInsets.all(
                16,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => BookInHorizontalList(
                bookModel: books[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
              itemCount: books.length,
            ),
          ),
        ],
      ),
    );
  }
}
