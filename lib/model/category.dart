import 'package:drift/drift.dart';

class Categories extends Table {
  // PRIMARY KEY
  IntColumn get id => integer().autoIncrement()();

  // // Users Table Id
  // IntColumn get userId => integer()();

  // test
  TextColumn get title => text()();
}