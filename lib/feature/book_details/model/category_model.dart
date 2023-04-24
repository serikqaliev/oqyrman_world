import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

/// `CategoryModel` - это класс данных, представляющий модель категории книг
/// в вашем приложении. Он содержит только одно поле - `category`,
/// которое представляет название категории.

/// Аннотация `@freezed` генерирует конструктор, сравнение, хэш-код и операторы toString()
/// для класса. Она также генерирует абстрактный класс, который будет использован для реализации данных классов.

/// Аннотация `@JsonSerializable` используется для сериализации/десериализации
/// экземпляров класса в/из JSON формата. Она генерирует метод `toJson()` для сериализации объекта
/// в JSON и фабрику `CategoryModel.fromJson()` для десериализации объекта из JSON.

/// Также в данном примере используется кодогенерация библиотеки [freezed], которая генерирует абстрактный класс
/// и реализацию для всех конструкторов, объявленных в `CategoryModel`. Это позволяет автоматически генерировать
/// более безопасный и простой в использовании код.

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
