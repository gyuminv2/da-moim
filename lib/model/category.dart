import 'package:drift/drift.dart';

class Categories extends Table {
  // PRIMARY KEY
  IntColumn get id => integer().autoIncrement()();

  // Users Table Id
  IntColumn get userId => integer()();

  // Boards Table Id
  IntColumn get boardId => integer()();
}