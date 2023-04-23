import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../book_details/model/book_model.dart';
import '../bloc/home_page_bloc.dart';
import 'book_in_h_list.dart';

class BooksHorizontalList extends StatelessWidget {
  const BooksHorizontalList({
    Key? key,
    required this.books,
  }) : super(key: key);

  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomePageBloc, HomePageState, List<BookModel>>(
      selector: (state) {
        return state.lastOpenedBooks;
      },
      builder: (context, lastOpenedBooks) {
        return Visibility(
          visible: lastOpenedBooks.isNotEmpty,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  'Соңғы ашылған кітаптар',
                  textAlign: TextAlign.start,
                  style: TextStyle(
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
                    bookModel: lastOpenedBooks[index],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 16,
                  ),
                  itemCount: lastOpenedBooks.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
