import 'package:books_app/feature/book_details/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/widget/categories_widget.dart';
import '../bloc/new_book_bloc.dart';

/// В этом модуле создается виджет, который позволяет выбирать категории для новой книги.
/// Виджет представляет собой две колонки. В первой колонке выводится текст "Жаңа жанр қосу"
/// (Добавить новую категорию), если список категорий пуст. Если же в списке есть категории,
/// то они выводятся во второй колонке.

/// Если список категорий пуст, то при нажатии на текст "Жаңа жанр қосу" вызывается диалоговое окно,
/// в котором можно добавить новую категорию. Пользователь вводит название категории в текстовое поле,
/// а затем может добавить новую категорию или отменить добавление.

/// Если список категорий не пуст, то выводится список уже созданных категорий во второй колонке.
/// Каждая категория представлена в виде отдельного виджета CategoriesWidget.
/// Пользователь может выбрать категорию, нажав на нее, и добавить ее к новой книге.
/// Также есть возможность добавить новую категорию, нажав на текст "Жаңа жанр қосу"
/// в правом верхнем углу списка категорий.

/// Весь этот функционал реализуется благодаря использованию пакета flutter_bloc,
/// который облегчает работу с состояниями в приложении Flutter. Также используются другие пакеты,
/// например, books_app/feature/book_details/model/category_model.dart, который определяет модель категории.

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
