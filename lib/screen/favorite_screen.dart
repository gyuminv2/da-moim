import 'package:flutter/material.dart';
import 'package:damoim/screen/write_screen.dart';
import 'package:damoim/screen/home_screen.dart';
import 'package:damoim/screen/profile_screen.dart';
import 'package:damoim/screen/avatar_widget.dart';
import 'package:damoim/screen/post_widget.dart';
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);
  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 1;
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
      if (selectedIndex == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavoriteScreen(),
          ),
        );
      }

      if (selectedIndex == 3) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
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
        title: const Text("좋아요 누른 글"),
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
                children: [
          ],
        ),
        ],
      ),
    ),
    ),);
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
