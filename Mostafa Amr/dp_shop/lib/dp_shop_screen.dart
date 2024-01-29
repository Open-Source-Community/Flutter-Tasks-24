// ignore_for_file: prefer_const_constructors

import 'package:dp_shop/widgets/best_selling.dart';
import 'package:dp_shop/widgets/categories.dart';
import 'package:flutter/material.dart';

class DpShopScreen extends StatelessWidget {
  const DpShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 237, 242),
      appBar: AppBar(
        leading: const Icon(
          Icons.short_text_sharp,
          color: Colors.deepPurple,
          size: 48,
        ),
        title: const Text(
          "DP Shop",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
                color: Colors.deepPurple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                  height: 24,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  )),
            )
          ]),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 55,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35), color: Colors.white),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Search here...",
                style: TextStyle(
                    color: Color.fromARGB(255, 140, 140, 140),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 80),
              Icon(
                Icons.camera_alt_rounded,
                color: Colors.deepPurple,
                size: 30,
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "Categories",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 15),
        Container(
          height: 70,
          child: Categories(),
        ),
        const SizedBox(height: 20),
        const Text(
          "Best Selling",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 20),
        Container(height: width, width: width, child: BestSelling())
      ]),
    );
  }
}
