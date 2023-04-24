import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../book_details/model/book_model.dart';
import '../bloc/home_page_bloc.dart';
import 'book_in_h_list.dart';

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
