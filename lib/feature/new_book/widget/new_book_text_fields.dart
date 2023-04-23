import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/new_book_bloc.dart';

class NewBookTextFields extends StatefulWidget {
  const NewBookTextFields({
    Key? key,
  }) : super(key: key);

  @override
  State<NewBookTextFields> createState() => _NewBookTextFieldsState();
}

class _NewBookTextFieldsState extends State<NewBookTextFields> {
  final TextEditingController _titleController = TextEditingController();

  final TextEditingController _authorController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _titleController,
          onChanged: (value) {
            context.read<NewBookBloc>().add(
                  NewBookEvent.changeTitle(
                    title: value,
                  ),
                );
          },
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(
              8,
            ),
            hintText: 'Кітаптың атауы',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          onChanged: (value) {
            context.read<NewBookBloc>().add(
                  NewBookEvent.changeAuthor(
                    author: value,
                  ),
                );
          },
          controller: _authorController,
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(
              8,
            ),
            hintText: 'Кітаптың авторы',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          controller: _descriptionController,
          onChanged: (value) {
            context.read<NewBookBloc>().add(
                  NewBookEvent.changeDescription(
                    description: value,
                  ),
                );
          },
          style: const TextStyle(
            fontSize: 16,
          ),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(8),
            hintText: 'Кітаптың сипаттамасы',
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
