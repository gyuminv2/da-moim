import 'package:drift/drift.dart';

class Users extends Table {
  // PRIMARY KEY
  IntColumn get id => integer().autoIncrement()();

  // 비밀번호
  IntColumn get password => integer()();

  // 이름
  TextColumn get name => text()();

  // 성별
  TextColumn get gender => text()();

  // 전화번호
  IntColumn get phone => integer()();

  // 이메일
  TextColumn get email => text()();

  // 나이
  IntColumn get age => integer()();

  // Categories Table Id
  IntColumn get categoryId => integer()();
}