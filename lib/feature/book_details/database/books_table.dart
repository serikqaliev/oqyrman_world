import 'package:books_app/feature/book_details/database/categories_table.dart';
import 'package:drift/drift.dart';

/// Этот код определяет схему таблицы "[Books]" для использования в базе данных
/// с помощью библиотеки [Drift]. Схема содержит столбцы с данными, которые могут
/// быть сохранены в таблице. Некоторые из этих столбцов включают заголовок,
/// описание, автора, путь к файлу, категорию, созданную дату, обновленную дату,
/// последнюю открытую дату, информацию о том, является ли книга избранной и информацию
/// о том, была ли книга удалена. Также определены вспомогательные методы,
/// такие как определение первичного ключа. Код импортирует связанные таблицы категорий
/// и использует ссылочную целостность для связывания столбца категорий с таблицей [Categories].

class Books extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  TextColumn get author => text()();
  TextColumn get filePath => text()();
  TextColumn get thumbnailPath => text().nullable()();
  TextColumn get category => text().references(Categories, #title)();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime().nullable()();
  DateTimeColumn get lastOpenedAt => dateTime().nullable()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  BoolColumn get isDeleted => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}
