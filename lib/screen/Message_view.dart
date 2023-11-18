import 'package:flutter/material.dart';
import 'package:damoim/screen/home_screen.dart';
import 'package:damoim/screen/favorite_screen.dart';
import 'package:damoim/screen/profile_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 2;
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
        title: const Text("채팅"),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
    );
  }
}

class _MiddlePart extends StatelessWidget {
  const _MiddlePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Stack(
          children: [
          // Add your messaging UI here
          _buildMessageList(),
        ],
      ),
      ),
    );
  }
  Widget _buildMessageList() {
    // Replace this with your actual list of messages
    List<Widget> messages = [
      _buildMessageBubble("I was wondering if you would consider working with me?", "John", "10:00 AM"),
      _buildMessageBubble("Have you ever considered teaming up for a joint venture?", "Chris", "11:45 AM"),
      _buildMessageBubble("I've been pondering the idea of working together. What are your thoughts?" ,"Emily", "9:15 AM"),
      _buildMessageBubble("John, I've been contemplating a partnership. Are you open to discussions?", "Michael", "4:20 PM"),
      _buildMessageBubble("Do you reckon we could join forces and tackle this challenge together?", "Sarah", "1:10 PM"),
      _buildMessageBubble("Hey, I've been wondering if you'd be interested in a collaboration.", "David", "3:05 PM"),
      _buildMessageBubble("John, I've got an exciting project in mind. Would you be up for it?", "Laura", "10:50 AM"),
      _buildMessageBubble("John, I've been contemplating a potential collaboration opportunity. Are you available to discuss?","Ethan","5:00 PM"),
      _buildMessageBubble("I've been mulling over the idea of us teaming up professionally.", "Olivia", "8:40 AM"),
      _buildMessageBubble("Considering your expertise, would you be open to a joint effort?", "Brian", "12:15 PM"),
  // Add more messages as needed
    ];

    return Column(
      children: messages,
    );
  }

  Widget _buildMessageBubble(String message, String senderName, String time) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            senderName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4.0),
          Material(
            borderRadius: BorderRadius.circular(8.0),
            elevation: 3.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: 370.0, // Set a maximum width for the message container
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}



