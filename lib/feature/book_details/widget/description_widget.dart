import 'package:flutter/material.dart';

/// Этот код определяет виджет Description, который отображает описание книги.
/// Он принимает аргумент description типа String, который содержит описание книги.

/// Виджет состоит из столбца, содержащего заголовок "Сипаттама" и разделительную линию.
/// Затем отображается переданное описание, которое отображается в виде текста.

/// Параметры стиля для текста также задаются в этом виджете, а именно шрифт размером 16.
/// После текста добавляется пустое место в 32 пикселя.

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Сипаттама',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF698809),
          ),
        ),
        const Divider(
          height: 16,
          thickness: 2,
          color: Color(0xFF698809),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
