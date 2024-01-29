// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  List list = [
    {"path": "assets/images/1.png"},
    {"path": "assets/images/2.png"},
    {"path": "assets/images/3.png"},
    {"path": "assets/images/4.png"},
    {"path": "assets/images/5.png"},
    {"path": "assets/images/6.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.63),
          itemCount: list.length,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 320,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepPurple),
                          child: Center(
                            child: Text(
                              "-50%",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(width: 80),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          weight: 1,
                          size: 32,
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "${list[index]["path"]}",
                      height: 115,
                      width: 130,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Product Title",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Write description of \nproduct",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Center(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.deepPurple,
                        weight: 1,
                        size: 32,
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
