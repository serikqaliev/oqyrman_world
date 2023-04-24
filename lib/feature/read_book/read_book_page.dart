import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import '../book_details/model/book_model.dart';

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
  int? pages;
  bool? isReady;
  int? currentPage;

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
              setState(() {
                pages = pages;
                isReady = true;
              });
            },
            onError: (error) {
              debugPrint(error.toString());
            },
            onPageError: (page, error) {
              debugPrint('$page: ${error.toString()}');
            },
            onViewCreated: (PDFViewController pdfViewController) {
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
          Text(
            '${currentPage! + 1}/${pages! + 1}',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
      ],
    );
  }
}
