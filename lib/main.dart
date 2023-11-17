import 'package:damoim/database/drift_database.dart';
import 'package:damoim/screen/home_screen.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';

const DEFAULT_BOARDS_NAME = ['정글의 법칙', '신서유기', 'SBS', '복면가왕'];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = LocalDatabase();

  print('------GET------');
  final names = await database.getBoardTitles();

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

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
