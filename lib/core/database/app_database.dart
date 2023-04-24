import 'package:books_app/feature/book_details/database/books_table.dart';
import 'package:drift/drift.dart';
import '../../feature/book_details/database/categories_table.dart';
import 'drift/connection/open_connection.dart' as connection;

part 'app_database.g.dart';

/// Этот код содержит определение `AppDatabase`, который является базой данных,
/// используемой в приложении и связывает таблицы `Books` и `Categories`, определенные
/// в файлах `books_table.dart` и `categories_table.dart` соответственно.

/// `@DriftDatabase` - это аннотация, которая генерирует код для класса `AppDatabase`.
/// Аннотация использует таблицы, определенные в списке `tables`, чтобы сгенерировать
/// код базы данных, включая запросы к таблицам, методы миграции и т.д.

/// Класс `AppDatabase` также имеет конструктор, который принимает имя базы данных
/// в качестве параметра и вызывает функцию `connection.openConnection(name)`, чтобы создать
/// и открыть соединение с базой данных с этим именем.

/// Кроме того, класс `AppDatabase` переопределяет метод `schemaVersion`, который указывает
/// версию схемы базы данных, чтобы Drift мог проверять, нужно ли запускать миграции,
/// когда приложение обновляется до новой версии.

@DriftDatabase(tables: [Books, Categories])
class AppDatabase extends _$AppDatabase {
  AppDatabase({required String name}) : super(connection.openConnection(name));

  @override
  int get schemaVersion => 1;
}
