import 'package:flutter/material.dart';

import '../../read_book/read_book_page.dart';
import '../model/book_model.dart';

/// Это виджет `MainInfo`, который отображает основную информацию о книге
/// в списке книг или на странице деталей книги. Он содержит изображение обложки книги,
/// ее название, автора и кнопку "Оқу" для перехода к чтению книги.

/// `bookModel` - это объект `BookModel`, который содержит информацию о книге, включая обложку,
/// название и автора.

/// Виджет использует `Row` и `Flexible`, чтобы разместить изображение и описание книги
/// на одной строке и предотвратить обрезание текста на маленьких экранах.

/// Кнопка "Оқу" имеет зеленый фон и белый текст и открывает страницу чтения книги при нажатии.

class MainInfo extends StatelessWidget {
  const MainInfo({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              height: 200,
              child: AspectRatio(
                aspectRatio: 4 / 5,
                child: Image.memory(
                  bookModel.coverImage!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              top: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.title,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      bookModel.author,
                      maxLines: 3,
                      style: const TextStyle(
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ReadBookPage(
                          bookModel: bookModel,
                        ),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFF698809),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide.none,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(
                          Icons.menu_book_sharp,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Оқу'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
