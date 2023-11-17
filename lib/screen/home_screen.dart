import 'package:damoim/screen/Favorite_Screen.dart';
import 'package:damoim/screen/IT_view.dart';
import 'package:damoim/screen/art_view.dart';
import 'package:damoim/screen/avatar_widget.dart';
import 'package:damoim/screen/design_view.dart';
import 'package:damoim/screen/music_view.dart';
import 'package:damoim/screen/post_widget.dart';
import 'package:damoim/screen/study_view.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    // FavoriteScreen(),
    // MessageScreen(),
    // ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
      appBar: AppBar(
        backgroundColor: Color(0xFF265AA5),
        leadingWidth: 90.0,
        leading: Image.asset('assets/img/damo.png'),
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(width: 10.0),
          Icon(Icons.login, color: Colors.white),
          SizedBox(width: 10.0),
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _TopPart(),
              _SearchPart(),
              // _CategoryPart(),
              // _BodyPart(),
              _MiddlePart(),
              // _BottomPart(),
            ],
          ),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF265AA5),
      ),
      child: Row(
        children: [
          SizedBox(width: 30.0),
          Icon(Icons.star),
          SizedBox(width: 250.0),
          Icon(Icons.notifications),
          SizedBox(width: 20.0),
          Icon(Icons.login),
        ],
      ),
    );
  }
}

class _SearchPart extends StatelessWidget {
  const _SearchPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF265AA5),
        // color: Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          color: Color(0xFFFFFFFF),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Search',
            ),
          ),
        ),
      ),
    );
  }
}

class _CategoryPart extends StatelessWidget {
  const _CategoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Category'),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('hi'),
                SizedBox(width: 30),
                Text('hi'),
                SizedBox(width: 30),
                Text('hi'),
                SizedBox(width: 30),
                Text('hi'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _BodyPart extends StatelessWidget {
  const _BodyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'BODY',
        ),
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
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
        padding: const EdgeInsets.all(20),
        //_categoryList = 카테고리 목록
        //_postList = 게시글 목록
        children: [_categoryList(context), const SizedBox(height: 15), _postList()],
      ),
    );
  }
}

Widget _categoryList(BuildContext context) {
  List<AvatarType> avatarTypes = [
    AvatarType.TYPE3,
    AvatarType.TYPE4,
    AvatarType.TYPE5,
    AvatarType.TYPE6,
    AvatarType.TYPE7,
  ];

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => IT(),
            ),
          ),
          child: AvatarWidget(type: avatarTypes[0]),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Design(),
            ),
          ),
          child: AvatarWidget(type: avatarTypes[1]),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Music(),
            ),
          ),
          child: AvatarWidget(type: avatarTypes[2]),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Art(),
            ),
          ),
          child: AvatarWidget(type: avatarTypes[3]),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Study(),
            ),
          ),
          child: AvatarWidget(type: avatarTypes[4]),
        ),
      ],
    ),
  );
}

Widget _postList() {
  //컨텐츠 부분
  return Column(
    children: List.generate(5, (index) => PostWidget()).toList(),
  );
}
