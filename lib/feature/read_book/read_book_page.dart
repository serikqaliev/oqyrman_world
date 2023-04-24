import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../book_details/model/book_model.dart';

/// Это код отвечает за страницу чтения книги в формате PDF.

/// Класс `ReadBookPage` является безстейтовым виджетом, который создает экземпляр класса
/// `_ReadBookPageBody`, где происходит чтение книги.

/// Класс `_ReadBookPageBody` является состоянием изменяемым виджетом и содержит
/// основную логику чтения PDF-книги с помощью виджета `PDFView`.

/// `PDFView` - это виджет, предоставленный библиотекой `flutter_pdfview`,
/// который отображает PDF-файлы и позволяет пользователю просматривать книгу.

/// Переменная `isReady` хранит информацию о готовности к отображению PDF-книги,
/// и если значение переменной `isReady` равно `false`, то отображается линейный индикатор прогресса.

/// Также есть переменные `pages` и `currentPage`, которые хранят информацию о текущей странице
/// и общем количестве страниц в книге. Они используются для отображения текущей страницы пользователя
/// в интерфейсе.

/// Таким образом, этот код отображает страницу чтения книги в формате PDF и обеспечивает
/// пользователю возможность просмотра книги в приложении.

class ReadBookPage extends StatelessWidget {
  const ReadBookPage({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF698809),
        title: Text(
          bookModel.title,
        ),
        centerTitle: true,
      ),
      body: _ReadBookPageBody(
        bookModel: bookModel,
      ),
    );
  }
}

class _ReadBookPageBody extends StatefulWidget {
  const _ReadBookPageBody({
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  State<_ReadBookPageBody> createState() => _ReadBookPageBodyState();
}

class _ReadBookPageBodyState extends State<_ReadBookPageBody> {
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();
  bool? isReady;

  int? currentPage = 0;
  ValueNotifier<int> pagesValueNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PDFView(
            filePath: widget.bookModel.pdfFile.path,
            enableSwipe: true,
            swipeHorizontal: true,
            autoSpacing: false,
            pageFling: false,
            onRender: (pages) {
              debugPrint('pages1: $pages');
              setState(() {
                pagesValueNotifier.value = pages!;
                isReady = true;
              });
            },
            onError: (error) {
              debugPrint(error.toString());
            },
            onPageError: (page, error) {
              debugPrint('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) async {
              _controller.complete(pdfViewController);
            },
            onPageChanged: (int? page, int? total) {
              setState(() {
                currentPage = page;
              });
              debugPrint('page change: $page/$total');
            },
          ),
        ),
        if (isReady != null && !isReady!)
          const Center(
            child: LinearProgressIndicator(),
          ),
        if (isReady != null && isReady!)
          ValueListenableBuilder(
            valueListenable: pagesValueNotifier,
            builder: (context, pages, child) => Text(
              '${currentPage! + 1}/$pages',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
      ],
    );
  }
}
