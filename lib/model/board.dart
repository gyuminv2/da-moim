import 'package:drift/drift.dart';

class Boards extends Table {
  // PRIMARY KEY
  IntColumn get id => integer().autoIncrement()();

  // 제목
  TextColumn get title => text()();

  // Categories Table ID
  IntColumn get categoryId => integer()();

  // 내용
  TextColumn get content => text()();

  // 태그
  TextColumn get tag => text()();

  // Users Table Id
  IntColumn get userId => integer()();

  // 날짜
  DateTimeColumn get craetedAt => dateTime().clientDefault(
        () => DateTime.now(),
      )();

  // 조회수
  IntColumn get viewCnt => integer()();

  // 좋아요
  IntColumn get like => integer()();
}
