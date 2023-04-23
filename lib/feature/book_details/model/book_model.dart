import 'dart:io';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';

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
