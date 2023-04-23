import 'package:drift/drift.dart';

@DataClassName('Category')
class Categories extends Table {
  TextColumn get title => text()();

  @override
  Set<Column> get primaryKey => {title};
}
