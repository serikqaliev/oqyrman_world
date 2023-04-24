import 'dart:io';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';

/// Этот код содержит определение неизменяемой модели книги ([BookModel])
/// с помощью пакета [freezed_annotation]. Эта модель описывает свойства книги,
/// такие как идентификатор, название, автор, описание, категория, является ли книга избранной,
/// файл [PDF], обложка (в виде [Uint8List]), дата создания, дата обновления и дата последнего открытия.

@Freezed(
  toJson: false,
  fromJson: false,
)
class BookModel with _$BookModel {
  const factory BookModel({
    required final int id,
    required final String title,
    required final String author,
    required final String? description,
    required final String category,
    required final bool isFavorite,
    required final File pdfFile,
    required final Uint8List? coverImage,
    required final DateTime createdAt,
    required final DateTime? updatedAt,
    required final DateTime? lastOpenedAt,
  }) = _BookModel;

  const BookModel._();
}
