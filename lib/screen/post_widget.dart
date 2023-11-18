import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:damoim/screen/avatar_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  Widget _header() {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          AvatarWidget(
            type: AvatarType.TYPE2,
            nickname: 'Yamada ryo',
            size: 45,
          )
        ],
      ),
    );
  }

  Widget _image() {
    return Container(
      child: Image.asset('assets/img/band.jpeg'),
    );
  }

  Widget _infoCount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 1.0,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite, color: Colors.grey,),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.message, color: Colors.grey,),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.polyline, color: Colors.grey,),
        ),
        SizedBox(
          width: 1.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 10),
            ),
          ],
          color: Colors.white, // 배경 색상
        ),
        child: Column(
          children: [
            const SizedBox(height: 15),
            _header(),
            const SizedBox(height: 10),
            //Line
            Container(
              color: Colors.grey,
              height: 2.0,
              width: 300,
              //padding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
            const SizedBox(height: 20),
            _image(),
            const SizedBox(height: 25),
            _infoCount(),
            const SizedBox(height: 15)
            //_infoDescription(),
            //_replyTextBtn(),
            //_date(),
          ],
        ));
  }
}
