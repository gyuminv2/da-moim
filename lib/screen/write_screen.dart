import 'package:damoim/database/drift_database.dart';
import 'package:damoim/model/board.dart';
import 'package:damoim/screen/favorite_screen.dart';
import 'package:damoim/screen/home_screen.dart';
import 'package:damoim/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:damoim/database/drift_database.dart';

final GlobalKey<FormState> formkey = GlobalKey();
String? postCategory = "";
String? postTitle = "";
String? postContent = "";

class WriteScreen extends StatefulWidget {
  const WriteScreen({super.key});
  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 3;
  late TabController _tabController;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
      if (_selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavoriteScreen(),
          ),
        );
      }
      if (_selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavoriteScreen(),
          ),
        );
      }
      if (_selectedIndex == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
        () => setState(() => _selectedIndex = _tabController.index));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(178.5),
        child: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                if (formkey.currentState == null) {
                  return;
                }
                if (formkey.currentState!.validate()) {
                  print('에러가 없따');
                  print(postCategory);
                  print(postCategory.runtimeType);
                } else {
                  print('에러가 이따');
                }
              },
              icon: Icon(Icons.check),
            ),
          ],
          backgroundColor: Color(0xFF265AA5),
          leadingWidth: 90.0,
          title: Text('글 작성하기'),
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder<List<Board>>(
                  future: GetIt.I<LocalDatabase>().getAllBoards(),
                  builder: (context, snapshot) {
                    print(snapshot.data);
                    return Text('hi');
                  },
                ),
                _RealBodyPart(),
              ],
            ),
          ),
        ),
      )
      );
  }
}

class _RealBodyPart extends StatefulWidget {
  const _RealBodyPart({super.key});

  @override
  State<_RealBodyPart> createState() => _RealBodyPartState();
}

class _RealBodyPartState extends State<_RealBodyPart> {
  TextEditingController categoryController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Category',
                style: textTheme.bodyText1,
              ),
              TextFormField(
                onSaved: (String? val) {},
                validator: (String? val) {
                  if (val == null || val.isEmpty) {
                    return '값을 입력해주세요';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Category를 입력해주세요.',
                ),
                controller: categoryController,
                onChanged: (value) {
                  setState(() {
                    postCategory = value;
                  });
                },
              ),
              SizedBox(height: 30),
              Text(
                'title',
                style: textTheme.bodyText1,
              ),
              TextFormField(
                onSaved: (String? val) {},
                validator: (String? val) {
                  if (val == null || val.isEmpty) {
                    return '값을 입력해주세요';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'title를 입력해주세요.',
                ),
                controller: titleController,
                onChanged: (value) {
                  setState(() {
                    postTitle = value;
                  });
                },
              ),
              SizedBox(height: 30),
              Text(
                'content',
                style: textTheme.bodyText1,
              ),
              TextFormField(
                validator: (String? val) {
                  if (val == null || val.isEmpty) {
                    return '값을 입력해주세요';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 80.0),
                  border: OutlineInputBorder(),
                  hintText: '   content를 입력해주세요.',
                ),
                controller: contentController,
                onChanged: (value) {
                  setState(() {
                    postContent = value;
                  });
                },
              ),
              SizedBox(height: 40),
              Text(
                'picture',
                style: textTheme.bodyText1,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_a_photo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
