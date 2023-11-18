import 'package:damoim/database/drift_database.dart';
import 'package:damoim/screen/home_screen.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

const DEFAULT_BOARDS_NAME = [
  'flutter 파해치기',
  'git 알아보기',
  'docker 딥다이브',
  'backend 어려워'
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = LocalDatabase();

  GetIt.I.registerSingleton<LocalDatabase>(database);

  print('------GET------');
  final names = await database.getAllBoards();

  if (names.isEmpty) {
    for (String str in DEFAULT_BOARDS_NAME) {
      await database.createBoard(
        BoardsCompanion(
          title: Value(str),
          categoryId: Value(
              123), // Provide appropriate values or use const Value.absent() if nullable
          content: Value('hi'),
          tag: Value('#1'),
          userId: Value(1),
          viewCnt: Value(1),
          like: Value(1),
        ),
      );
    }
  }

  print(await database.getBoardTitles());
  print(await database.getAllBoards());

  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: 'sunflower',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      home: HomeScreen(),
    ),
  );
}
