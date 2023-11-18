import 'package:damoim/screen/post_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'design',
      home: Design(),
    );
  }
}

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);
  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  final _valueList = ['인기순', '추천순', '가장 최근'];
  var selected = '인기순';
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '디자인',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xFF265AA5),
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
                    child: Text("가구 디자인",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF265AA5)),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("건축 디자인",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF265AA5)),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("게임 디자인",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF265AA5)),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("미디어 디자인",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF265AA5)),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("환경 디자인",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF265AA5)),
                    ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: Text("산업 디자인",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Color(0xFF265AA5)),
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