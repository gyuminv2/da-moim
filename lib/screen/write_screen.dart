import 'package:damoim/screen/favorite_screen.dart';
import 'package:damoim/screen/home_screen.dart';
import'package:damoim/screen/profile_screen.dart';
import 'package:flutter/material.dart';

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
              onPressed: () {},
              icon: Icon(Icons.check),
            ),
          ],
          backgroundColor: Color(0xFF265AA5),
          leadingWidth: 90.0,
          title: Text('글 작성하기'),
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _RealBodyPart(),
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


class _RealBodyPart extends StatefulWidget {
  const _RealBodyPart({super.key});

  @override
  State<_RealBodyPart> createState() => _RealBodyPartState();
}

class _RealBodyPartState extends State<_RealBodyPart> {

  TextEditingController categoryController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController contentController = TextEditingController();

  String postCategory ="";
  String postTitle ="";
  String postContent ="";

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Category를 입력해주세요.',
            ),
            controller: categoryController,
            onChanged: (value){
              setState(() {
                postCategory = value;
              });
            },
          ),
          SizedBox(height: 30),
          Text(
            'title',
          ),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'title를 입력해주세요.',
            ),
            controller: titleController,
            onChanged: (value){
              setState(() {
                postTitle = value;
              });
            },
          ),
          SizedBox(height: 30),
          Text(
            'content',
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 80.0),
              border: OutlineInputBorder(),
              hintText: '   content를 입력해주세요.',
            ),
            controller: contentController,
            onChanged: (value){
              setState(() {
                postContent = value;
              });
            },
          ),
          SizedBox(height: 40),
          Text('picture'),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}

