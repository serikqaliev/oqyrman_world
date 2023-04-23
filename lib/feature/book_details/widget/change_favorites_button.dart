import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/book_detail_page_bloc.dart';

class ChangeFavoritesButton extends StatelessWidget {
  const ChangeFavoritesButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BookDetailPageBloc, BookDetailPageState, bool?>(
      selector: (state) {
        return state.book?.isFavorite;
      },
      builder: (context, isFavorite) {
        if (isFavorite == null) {
          return const SizedBox.shrink();
        }
        return IconButton(
          onPressed: () {
            context.read<BookDetailPageBloc>().add(
                  const BookDetailPageEvent.addToFavorites(),
                );
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
          ),
        );
      },
    );
  }
}
