import 'package:books_app/feature/book_details/database/books_table.dart';
import 'package:drift/drift.dart';
import '../../feature/book_details/database/categories_table.dart';
import 'drift/connection/open_connection.dart' as connection;

part 'app_database.g.dart';

@DriftDatabase(tables: [Books, Categories])
class AppDatabase extends _$AppDatabase {
  AppDatabase({required String name}) : super(connection.openConnection(name));

  @override
  int get schemaVersion => 1;
}
