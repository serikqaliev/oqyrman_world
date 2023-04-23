import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

/// CategoryModel data class
@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required final String category,
  }) = _CategoryModel;

  const CategoryModel._();

  /// Generate CategoryModel class from Map<String, Object?>
  factory CategoryModel.fromJson(Map<String, Object?> json) =>
      _$CategoryModelFromJson(json);
}
