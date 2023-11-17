// private 값들은 불러올 수 없다.
import 'dart:io';

import 'package:damoim/model/board.dart';
import 'package:damoim/model/category.dart';
import 'package:damoim/model/user.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// import 보다 넓은 기능 => private 값까지 불러올 수 있다.
part 'drift_database.g.dart';

@DriftDatabase(
  tables: [
    Boards,
    Categories,
    Users,
  ],
)
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  // InsertInto
  Future<int> createBoard(BoardsCompanion data) => into(boards).insert(data);

  Future<int> createUser(UsersCompanion data) => into(users).insert(data);

  Future<int> createCategoly(CategoriesCompanion data) =>
      into(categories).insert(data);

  // Select
  Future<List<String>> getBoardTitles() =>
      select(boards).map((board) => board.title).get();

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
