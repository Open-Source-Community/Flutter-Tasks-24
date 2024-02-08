import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task2/Best_Selling_Widget.dart';
import 'package:task2/Categories_widget.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        shadowColor: Color(0xffffffff),
        leading: Icon(
          Icons.sort,
          color: Color(0xff52529c),
          size: 35,
        ),
        title: Text("DP Shop",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff52529c))),
        actions: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xff52529c),
                  size: 35,
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Text("3",
                    style: TextStyle(color: Color(0xffffffff), fontSize: 15)),
              )
            ],
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xffeeedf2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ListView(children: [
          Padding(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 5),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xffffffff),
                filled: true,
                suffixIcon: Icon(Icons.photo_camera, color: Color(0xff282457)),
                hintText: "Search here....",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffffffff), width: 0.0),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text("Categories",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff52529c))),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Categories("1"),
                SizedBox(width: 10),
                Categories("2"),
                SizedBox(width: 10),
                Categories("3"),
                SizedBox(width: 10),
                Categories("4"),
                SizedBox(width: 10),
                Categories("5"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text("Best selling",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff52529c))),
          ),
          GridView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 300,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            children: [
              BestSelling("1"),
              BestSelling("2"),
              BestSelling("3"),
              BestSelling("4"),
              BestSelling("5"),
              BestSelling("6"),
              BestSelling("7"),
            ],
          ),
        ]),
      ),
    );
  }
}
