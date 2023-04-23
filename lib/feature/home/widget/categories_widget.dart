import 'package:flutter/material.dart';

import '../../book_details/model/category_model.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    Key? key,
    required this.onPress,
    required this.categories,
  }) : super(key: key);

  final Function(CategoryModel) onPress;
  final List<CategoryModel> categories;

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Кітап жанры',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 48,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });

                widget.onPress(widget.categories[index]);
              },
              child: Chip(
                label: Text(
                  widget.categories[index].category,
                  style: TextStyle(
                    fontWeight: index == _selectedIndex
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                backgroundColor: index == _selectedIndex
                    ? Color(0xFF698809)
                    : Colors.transparent,
                side: BorderSide(
                  color: index == _selectedIndex
                      ? Colors.white
                      : Color(0xFF698809),
                ),
              ), // color: Color(0xFF698809),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              width: 16,
            ),
            itemCount: widget.categories.length,
          ),
        ),
      ],
    );
  }
}
