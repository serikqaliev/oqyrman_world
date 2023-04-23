import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/widget/categories_widget.dart';
import '../bloc/new_book_bloc.dart';

class ChooseCategoryWidget extends StatefulWidget {
  const ChooseCategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ChooseCategoryWidget> createState() => _ChooseCategoryWidgetState();
}

class _ChooseCategoryWidgetState extends State<ChooseCategoryWidget> {
  void onPressAddJenre() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text(
            'Жаңа жанр қосу',
          ),
          content: TextField(
            onChanged: (value) => context.read<NewBookBloc>().add(
                  NewBookEvent.changeNewCategoryTitle(
                    newCategoryTitle: value,
                  ),
                ),
            decoration: const InputDecoration(
              hintText: 'Жанр атауы',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.read<NewBookBloc>().add(
                      const NewBookEvent.addNewCategory(),
                    );

                Navigator.pop(context);
              },
              child: const Text(
                'Қосу',
                style: TextStyle(
                  color: Color(0xFF698809),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Болдырмау',
                style: TextStyle(
                  color: Color(0xFF698809),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: context.select(
            (NewBookBloc bloc) => bloc.state.isCategoriesEmpty,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: GestureDetector(
                onTap: onPressAddJenre,
                child: const Text(
                  'Жаңа жанр қосу',
                  style: TextStyle(
                    color: Color(0xFF698809),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: context.select(
            (NewBookBloc bloc) => !bloc.state.isCategoriesEmpty,
          ),
          child: Stack(
            children: [
              BlocSelector<NewBookBloc, NewBookState, List<CategoryModel>>(
                selector: (state) {
                  return state.categories;
                },
                builder: (context, categories) {
                  return CategoriesWidget(
                    categories: categories,
                    onPress: (CategoryModel categoryModel) {
                      context.read<NewBookBloc>().add(
                            NewBookEvent.chooseCategory(
                              category: categoryModel,
                            ),
                          );
                    },
                  );
                },
              ),
              Positioned(
                top: 4,
                right: 16,
                child: GestureDetector(
                  onTap: onPressAddJenre,
                  child: const Text(
                    'Жаңа жанр қосу',
                    style: TextStyle(
                      color: Color(0xFF698809),
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
