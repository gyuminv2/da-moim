// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
class $BoardsTable extends Boards with TableInfo<$BoardsTable, Board> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BoardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tagMeta = const VerificationMeta('tag');
  @override
  late final GeneratedColumn<String> tag = GeneratedColumn<String>(
      'tag', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _craetedAtMeta =
      const VerificationMeta('craetedAt');
  @override
  late final GeneratedColumn<DateTime> craetedAt = GeneratedColumn<DateTime>(
      'craeted_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  static const VerificationMeta _viewCntMeta =
      const VerificationMeta('viewCnt');
  @override
  late final GeneratedColumn<int> viewCnt = GeneratedColumn<int>(
      'view_cnt', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _likeMeta = const VerificationMeta('like');
  @override
  late final GeneratedColumn<int> like = GeneratedColumn<int>(
      'like', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, categoryId, content, tag, userId, craetedAt, viewCnt, like];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'boards';
  @override
  VerificationContext validateIntegrity(Insertable<Board> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('tag')) {
      context.handle(
          _tagMeta, tag.isAcceptableOrUnknown(data['tag']!, _tagMeta));
    } else if (isInserting) {
      context.missing(_tagMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('craeted_at')) {
      context.handle(_craetedAtMeta,
          craetedAt.isAcceptableOrUnknown(data['craeted_at']!, _craetedAtMeta));
    }
    if (data.containsKey('view_cnt')) {
      context.handle(_viewCntMeta,
          viewCnt.isAcceptableOrUnknown(data['view_cnt']!, _viewCntMeta));
    } else if (isInserting) {
      context.missing(_viewCntMeta);
    }
    if (data.containsKey('like')) {
      context.handle(
          _likeMeta, like.isAcceptableOrUnknown(data['like']!, _likeMeta));
    } else if (isInserting) {
      context.missing(_likeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Board map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Board(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      tag: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tag'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      craetedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}craeted_at'])!,
      viewCnt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}view_cnt'])!,
      like: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}like'])!,
    );
  }

  @override
  $BoardsTable createAlias(String alias) {
    return $BoardsTable(attachedDatabase, alias);
  }
}

class Board extends DataClass implements Insertable<Board> {
  final int id;
  final String title;
  final int categoryId;
  final String content;
  final String tag;
  final int userId;
  final DateTime craetedAt;
  final int viewCnt;
  final int like;
  const Board(
      {required this.id,
      required this.title,
      required this.categoryId,
      required this.content,
      required this.tag,
      required this.userId,
      required this.craetedAt,
      required this.viewCnt,
      required this.like});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['category_id'] = Variable<int>(categoryId);
    map['content'] = Variable<String>(content);
    map['tag'] = Variable<String>(tag);
    map['user_id'] = Variable<int>(userId);
    map['craeted_at'] = Variable<DateTime>(craetedAt);
    map['view_cnt'] = Variable<int>(viewCnt);
    map['like'] = Variable<int>(like);
    return map;
  }

  BoardsCompanion toCompanion(bool nullToAbsent) {
    return BoardsCompanion(
      id: Value(id),
      title: Value(title),
      categoryId: Value(categoryId),
      content: Value(content),
      tag: Value(tag),
      userId: Value(userId),
      craetedAt: Value(craetedAt),
      viewCnt: Value(viewCnt),
      like: Value(like),
    );
  }

  factory Board.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Board(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      content: serializer.fromJson<String>(json['content']),
      tag: serializer.fromJson<String>(json['tag']),
      userId: serializer.fromJson<int>(json['userId']),
      craetedAt: serializer.fromJson<DateTime>(json['craetedAt']),
      viewCnt: serializer.fromJson<int>(json['viewCnt']),
      like: serializer.fromJson<int>(json['like']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'categoryId': serializer.toJson<int>(categoryId),
      'content': serializer.toJson<String>(content),
      'tag': serializer.toJson<String>(tag),
      'userId': serializer.toJson<int>(userId),
      'craetedAt': serializer.toJson<DateTime>(craetedAt),
      'viewCnt': serializer.toJson<int>(viewCnt),
      'like': serializer.toJson<int>(like),
    };
  }

  Board copyWith(
          {int? id,
          String? title,
          int? categoryId,
          String? content,
          String? tag,
          int? userId,
          DateTime? craetedAt,
          int? viewCnt,
          int? like}) =>
      Board(
        id: id ?? this.id,
        title: title ?? this.title,
        categoryId: categoryId ?? this.categoryId,
        content: content ?? this.content,
        tag: tag ?? this.tag,
        userId: userId ?? this.userId,
        craetedAt: craetedAt ?? this.craetedAt,
        viewCnt: viewCnt ?? this.viewCnt,
        like: like ?? this.like,
      );
  @override
  String toString() {
    return (StringBuffer('Board(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('categoryId: $categoryId, ')
          ..write('content: $content, ')
          ..write('tag: $tag, ')
          ..write('userId: $userId, ')
          ..write('craetedAt: $craetedAt, ')
          ..write('viewCnt: $viewCnt, ')
          ..write('like: $like')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, categoryId, content, tag, userId, craetedAt, viewCnt, like);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Board &&
          other.id == this.id &&
          other.title == this.title &&
          other.categoryId == this.categoryId &&
          other.content == this.content &&
          other.tag == this.tag &&
          other.userId == this.userId &&
          other.craetedAt == this.craetedAt &&
          other.viewCnt == this.viewCnt &&
          other.like == this.like);
}

class BoardsCompanion extends UpdateCompanion<Board> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> categoryId;
  final Value<String> content;
  final Value<String> tag;
  final Value<int> userId;
  final Value<DateTime> craetedAt;
  final Value<int> viewCnt;
  final Value<int> like;
  const BoardsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.content = const Value.absent(),
    this.tag = const Value.absent(),
    this.userId = const Value.absent(),
    this.craetedAt = const Value.absent(),
    this.viewCnt = const Value.absent(),
    this.like = const Value.absent(),
  });
  BoardsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required int categoryId,
    required String content,
    required String tag,
    required int userId,
    this.craetedAt = const Value.absent(),
    required int viewCnt,
    required int like,
  })  : title = Value(title),
        categoryId = Value(categoryId),
        content = Value(content),
        tag = Value(tag),
        userId = Value(userId),
        viewCnt = Value(viewCnt),
        like = Value(like);
  static Insertable<Board> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? categoryId,
    Expression<String>? content,
    Expression<String>? tag,
    Expression<int>? userId,
    Expression<DateTime>? craetedAt,
    Expression<int>? viewCnt,
    Expression<int>? like,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (categoryId != null) 'category_id': categoryId,
      if (content != null) 'content': content,
      if (tag != null) 'tag': tag,
      if (userId != null) 'user_id': userId,
      if (craetedAt != null) 'craeted_at': craetedAt,
      if (viewCnt != null) 'view_cnt': viewCnt,
      if (like != null) 'like': like,
    });
  }

  BoardsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<int>? categoryId,
      Value<String>? content,
      Value<String>? tag,
      Value<int>? userId,
      Value<DateTime>? craetedAt,
      Value<int>? viewCnt,
      Value<int>? like}) {
    return BoardsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      categoryId: categoryId ?? this.categoryId,
      content: content ?? this.content,
      tag: tag ?? this.tag,
      userId: userId ?? this.userId,
      craetedAt: craetedAt ?? this.craetedAt,
      viewCnt: viewCnt ?? this.viewCnt,
      like: like ?? this.like,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (tag.present) {
      map['tag'] = Variable<String>(tag.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (craetedAt.present) {
      map['craeted_at'] = Variable<DateTime>(craetedAt.value);
    }
    if (viewCnt.present) {
      map['view_cnt'] = Variable<int>(viewCnt.value);
    }
    if (like.present) {
      map['like'] = Variable<int>(like.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BoardsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('categoryId: $categoryId, ')
          ..write('content: $content, ')
          ..write('tag: $tag, ')
          ..write('userId: $userId, ')
          ..write('craetedAt: $craetedAt, ')
          ..write('viewCnt: $viewCnt, ')
          ..write('like: $like')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Categorie> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _boardIdMeta =
      const VerificationMeta('boardId');
  @override
  late final GeneratedColumn<int> boardId = GeneratedColumn<int>(
      'board_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, userId, boardId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Categorie> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('board_id')) {
      context.handle(_boardIdMeta,
          boardId.isAcceptableOrUnknown(data['board_id']!, _boardIdMeta));
    } else if (isInserting) {
      context.missing(_boardIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Categorie map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Categorie(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      boardId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}board_id'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Categorie extends DataClass implements Insertable<Categorie> {
  final int id;
  final int userId;
  final int boardId;
  const Categorie(
      {required this.id, required this.userId, required this.boardId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['board_id'] = Variable<int>(boardId);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      userId: Value(userId),
      boardId: Value(boardId),
    );
  }

  factory Categorie.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Categorie(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      boardId: serializer.fromJson<int>(json['boardId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'boardId': serializer.toJson<int>(boardId),
    };
  }

  Categorie copyWith({int? id, int? userId, int? boardId}) => Categorie(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        boardId: boardId ?? this.boardId,
      );
  @override
  String toString() {
    return (StringBuffer('Categorie(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('boardId: $boardId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, boardId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Categorie &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.boardId == this.boardId);
}

class CategoriesCompanion extends UpdateCompanion<Categorie> {
  final Value<int> id;
  final Value<int> userId;
  final Value<int> boardId;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.boardId = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required int boardId,
  })  : userId = Value(userId),
        boardId = Value(boardId);
  static Insertable<Categorie> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<int>? boardId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (boardId != null) 'board_id': boardId,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? id, Value<int>? userId, Value<int>? boardId}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      boardId: boardId ?? this.boardId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (boardId.present) {
      map['board_id'] = Variable<int>(boardId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('boardId: $boardId')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<int> password = GeneratedColumn<int>(
      'password', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<int> phone = GeneratedColumn<int>(
      'phone', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
      'age', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, password, name, gender, phone, email, age, categoryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}password'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      age: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}age'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final int password;
  final String name;
  final String gender;
  final int phone;
  final String email;
  final int age;
  final int categoryId;
  const User(
      {required this.id,
      required this.password,
      required this.name,
      required this.gender,
      required this.phone,
      required this.email,
      required this.age,
      required this.categoryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['password'] = Variable<int>(password);
    map['name'] = Variable<String>(name);
    map['gender'] = Variable<String>(gender);
    map['phone'] = Variable<int>(phone);
    map['email'] = Variable<String>(email);
    map['age'] = Variable<int>(age);
    map['category_id'] = Variable<int>(categoryId);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      password: Value(password),
      name: Value(name),
      gender: Value(gender),
      phone: Value(phone),
      email: Value(email),
      age: Value(age),
      categoryId: Value(categoryId),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      password: serializer.fromJson<int>(json['password']),
      name: serializer.fromJson<String>(json['name']),
      gender: serializer.fromJson<String>(json['gender']),
      phone: serializer.fromJson<int>(json['phone']),
      email: serializer.fromJson<String>(json['email']),
      age: serializer.fromJson<int>(json['age']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'password': serializer.toJson<int>(password),
      'name': serializer.toJson<String>(name),
      'gender': serializer.toJson<String>(gender),
      'phone': serializer.toJson<int>(phone),
      'email': serializer.toJson<String>(email),
      'age': serializer.toJson<int>(age),
      'categoryId': serializer.toJson<int>(categoryId),
    };
  }

  User copyWith(
          {int? id,
          int? password,
          String? name,
          String? gender,
          int? phone,
          String? email,
          int? age,
          int? categoryId}) =>
      User(
        id: id ?? this.id,
        password: password ?? this.password,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        age: age ?? this.age,
        categoryId: categoryId ?? this.categoryId,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('password: $password, ')
          ..write('name: $name, ')
          ..write('gender: $gender, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('age: $age, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, password, name, gender, phone, email, age, categoryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.password == this.password &&
          other.name == this.name &&
          other.gender == this.gender &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.age == this.age &&
          other.categoryId == this.categoryId);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<int> password;
  final Value<String> name;
  final Value<String> gender;
  final Value<int> phone;
  final Value<String> email;
  final Value<int> age;
  final Value<int> categoryId;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.password = const Value.absent(),
    this.name = const Value.absent(),
    this.gender = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.age = const Value.absent(),
    this.categoryId = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required int password,
    required String name,
    required String gender,
    required int phone,
    required String email,
    required int age,
    required int categoryId,
  })  : password = Value(password),
        name = Value(name),
        gender = Value(gender),
        phone = Value(phone),
        email = Value(email),
        age = Value(age),
        categoryId = Value(categoryId);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<int>? password,
    Expression<String>? name,
    Expression<String>? gender,
    Expression<int>? phone,
    Expression<String>? email,
    Expression<int>? age,
    Expression<int>? categoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (password != null) 'password': password,
      if (name != null) 'name': name,
      if (gender != null) 'gender': gender,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (age != null) 'age': age,
      if (categoryId != null) 'category_id': categoryId,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<int>? password,
      Value<String>? name,
      Value<String>? gender,
      Value<int>? phone,
      Value<String>? email,
      Value<int>? age,
      Value<int>? categoryId}) {
    return UsersCompanion(
      id: id ?? this.id,
      password: password ?? this.password,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      age: age ?? this.age,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (password.present) {
      map['password'] = Variable<int>(password.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (phone.present) {
      map['phone'] = Variable<int>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('password: $password, ')
          ..write('name: $name, ')
          ..write('gender: $gender, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('age: $age, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $BoardsTable boards = $BoardsTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [boards, categories, users];
}
