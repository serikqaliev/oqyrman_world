import 'package:books_app/feature/book_details/book_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../book_details/model/book_model.dart';
import '../bloc/home_page_bloc.dart';

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
