import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../new_book/new_book_page.dart';
import '../bloc/home_page_bloc.dart';

class AddBookButton extends StatefulWidget {
  const AddBookButton({
    Key? key,
  }) : super(key: key);

  @override
  State<AddBookButton> createState() => _AddBookButtonState();
}

class _AddBookButtonState extends State<AddBookButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final bool? added = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NewBookPage(),
          ),
        );

        if (added != null && added) {
          if (mounted) {
            context.read<HomePageBloc>().add(
                  const HomePageEvent.bookAdded(),
                );
          }
        }
      },
      icon: const Icon(
        Icons.add,
      ),
    );
  }
}
