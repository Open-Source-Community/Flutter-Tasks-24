// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  List list = [
    {"name": "Sandal", "path": "assets/images/1.png"},
    {"name": "Watch", "path": "assets/images/2.png"},
    {"name": "Bag", "path": "assets/images/3.png"},
  ];

  Categories({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 20, left: 5),
              child: Container(
                height: 70,
                width: 155,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  children: [
                    Image.asset(
                      "${list[index]["path"]}",
                      height: 50,
                      width: 62,
                    ),
                    Text(
                      "${list[index]["name"]}",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
