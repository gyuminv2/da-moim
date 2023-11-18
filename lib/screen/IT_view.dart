import 'package:damoim/screen/post_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IT',
      home: IT(),
    );
  }
}

class IT extends StatefulWidget {
  const IT({Key? key}) : super(key: key);
  @override
  State<IT> createState() => _ITState();
}

class _ITState extends State<IT> {
  final _valueList = ['인기순', '추천순', '가장 최근'];
  var selected = '인기순';
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IT개발, 데이타',
          style: TextStyle(color: Color(0xFF265AA5)),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the previous screen
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // You can add search functionality here
              // showSearch(context: context, delegate: MySearchDelegate());
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("게임 개발"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("기술 지원"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("데이터 분석"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("웹 개발"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("클라우드 개발"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("스프링"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.cyanAccent),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Align(
                alignment: Alignment.centerRight,
                child: DropdownButton(
                  value: selected,
                  items: _valueList.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.orange),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selected = value!;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded( // Use Expanded to allow _postList to take remaining space
            child: ListView(
              // Use ListView instead of Column for dynamic scrolling
              children: List.generate(5, (index) => PostWidget()).toList(),
            ),
          ),
        ],
      ),
    );
  }
}