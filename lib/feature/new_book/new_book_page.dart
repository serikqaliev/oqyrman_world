import 'package:books_app/core/logic/get_it.dart';
import 'package:books_app/feature/new_book/widget/add_pdf_button.dart';
import 'package:books_app/feature/new_book/widget/choose_category_widget.dart';
import 'package:books_app/feature/new_book/widget/new_book_text_fields.dart';
import 'package:books_app/feature/new_book/widget/save_book_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/new_book_bloc.dart';

class NewBookPage extends StatelessWidget {
  const NewBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => getIt<NewBookBloc>()
        ..add(
          const NewBookEvent.started(),
        ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF698809),
          title: const Text(
            'Жаңа кітап',
          ),
        ),
        body: const _NewBookPageBody(),
        floatingActionButton: const SaveBookButton(),
      ),
    );
  }
}

class _NewBookPageBody extends StatefulWidget {
  const _NewBookPageBody({
    Key? key,
  }) : super(key: key);

  @override
  State<_NewBookPageBody> createState() => _NewBookPageBodyState();
}

class _NewBookPageBodyState extends State<_NewBookPageBody> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<NewBookBloc, NewBookState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (state) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: [
                    const Icon(
                      Icons.error,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Flexible(
                      child: Text(
                        state.message,
                        style: const TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          successful: (state) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Сәтті қосылды'),
              ),
            );

            Navigator.pop<bool>(context, true);
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: NewBookTextFields(),
            ),
            SizedBox(
              height: 16,
            ),
            ChooseCategoryWidget(),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: AddPdfButton(),
            ),
          ],
        ),
      ),
    );
  }
}
