import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

/// Данный код открывает соединение с базой данных SQLite с помощью библиотеки Drift для работы с базами данных в Dart.

/// Функция `openConnection` возвращает объект `QueryExecutor`,
/// который позволяет выполнять запросы к базе данных. Внутри функции происходит следующее:
/// - Получается директория приложения, где будет храниться база данных,
/// с помощью функции `getApplicationDocumentsDirectory()`.
/// - Создается объект `File`, представляющий файл базы данных в данной директории.
/// - Возвращается объект `NativeDatabase` с этим файлом в качестве параметра.

/// `NativeDatabase` - это класс из библиотеки Drift,
/// предоставляющий реализацию `QueryExecutor` для базы данных SQLite на устройствах
/// под управлением операционной системы Android или iOS.

QueryExecutor openConnection(String name) => LazyDatabase(
      () async {
        final dbFolder = await getApplicationDocumentsDirectory();

        final file = File(path.join(
          dbFolder.path,
          '$name.sqlite',
        ));

        return NativeDatabase(file);
      },
    );
