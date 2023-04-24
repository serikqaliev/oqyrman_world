import 'package:drift/drift.dart';

/// Этот код содержит определение таблицы [Categories] для базы данных,
/// используя [Drift ORM]. [TextColumn] определяет столбец базы данных
/// для хранения текстовых значений. В данном случае, у таблицы [Categories]
/// есть только один столбец [title], который используется в качестве первичного ключа таблицы.
/// [@DataClassName('Category')] указывает, что для этой таблицы будет использоваться класс [Category]
/// в качестве модели данных.

@DataClassName('Category')
class Categories extends Table {
  TextColumn get title => text()();

  @override
  Set<Column> get primaryKey => {title};
}
