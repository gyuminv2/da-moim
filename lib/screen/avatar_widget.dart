import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:damoim/screen/Favorite_Screen.dart';

enum AvatarType { TYPE1, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  bool? hasStory;
  String? nickname;
  AvatarType type;
  double? size;

  AvatarWidget({
    Key? key,
    required this.type,
    this.nickname,
    this.size,
    this.hasStory,
  }) : super(key: key);

  Widget type1Widget() {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(size!),
          child: SizedBox(
            width: size,
            height: size,
            //image 변경()
            child: Image.asset('assets/img/ryo.jpeg'),
          )),
    );
  }

  Widget type2Widget() {
    return Row(
      children: [
        type1Widget(),
        Text(
          nickname ?? '',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget type3Widget() {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 7, vertical: 20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 10),
          ),
        ],
        image: DecorationImage(
          image: AssetImage('assets/img/it.png'),
          scale: 13.0,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.TYPE1:
        return type1Widget();

      case AvatarType.TYPE2:
        return type2Widget();

      case AvatarType.TYPE3:
        return type3Widget();
    }
  }
}
