import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/new_book_bloc.dart';

class SaveBookButton extends StatelessWidget {
  const SaveBookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NewBookBloc, NewBookState, bool>(
      selector: (state) {
        return state.canSave;
      },
      builder: (context, canSave) {
        return FloatingActionButton(
          backgroundColor: canSave ? const Color(0xFF698809) : Colors.grey,
          onPressed: () {
            context.read<NewBookBloc>().add(
                  const NewBookEvent.save(),
                );
          },
          child: const Icon(
            Icons.check,
          ),
        );
      },
    );
  }
}
