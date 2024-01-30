import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories(this.ImageNum, {Key? key}) : super(key: key);
  String ImageNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(children: [
        Image(image: AssetImage("images/$ImageNum.png")),
        Text(
          "Sandal",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff52529c)),
        )
      ]),
    );
  }
}
