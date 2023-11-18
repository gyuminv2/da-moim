import 'package:damoim/screen/favorite_Screen.dart';
import 'package:damoim/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:damoim/screen/post_widget.dart';
import 'package:damoim/screen/avatar_widget.dart';
import 'package:damoim/screen/write_screen.dart';
import 'package:damoim/screen/Message_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 3;
  late TabController tabController;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      }
      if (selectedIndex == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavoriteScreen(),
          ),
        );
      }

      if (selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessageScreen(),
          ),
        );
      }
    });
  }

  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController
        .addListener(() => setState(() => selectedIndex = tabController.index));
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF265AA5),
        title: const Text("마이 페이지"),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ProfilePart(),
            _MiddlePart(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Color(0xFF265AA5),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => WriteScreen(),
            ),
          );
        },
        child: Icon(
          Icons.edit,
        ),
      ),
    );
  }
}

class _ProfilePart extends StatelessWidget {
  const _ProfilePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF265AA5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Color(0xFF265AA5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hong_han_ul",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '#It',
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              '#개발',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  AvatarWidget(
                    type: AvatarType.TYPE1,
                    size: 80,
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '컴퓨터정보통신공학부 3학년',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '카테고리 수정',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                          SizedBox(width: 8.0),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '프로필 편집',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _MiddlePart extends StatelessWidget {
  const _MiddlePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        //padding 옆
        padding: const EdgeInsets.all(30),
        //_categoryList = 카테고리 목록
        //_postList = 게시글 목록
        children: [_postList()],
      ),
    );
  }
}

Widget _postList() {
  //컨텐츠 부분
  return Column(
    children: List.generate(50, (index) => PostWidget()).toList(),
  );
}
