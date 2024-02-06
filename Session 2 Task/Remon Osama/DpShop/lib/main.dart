import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
            color: Colors.indigo,
          ),
        ],
        title: Text("DP Shop",
            style:
                TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.indigo,
        ),
      ),
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search here..",
                icon: Icon(
                  Icons.camera_alt,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 3,
                //     crossAxisSpacing: 10,
                //     childAspectRatio: 2),
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                padding: EdgeInsets.all(20),

                children: [
                  Container(
                    height: 70,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/1.png',
                            height: 90, width: 50),
                        Text(
                          "Sandal",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/2.png',
                            height: 90, width: 50),
                        Text(
                          "Watch",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset('assets/Images/3.png',
                            height: 90, width: 50),
                        Text(
                          "Bag",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Best Selling",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.indigo),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 500,
              width: 500,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                physics: ClampingScrollPhysics(),
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/1.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/2.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/3.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/4.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/5.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/6.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        child: Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        left: 10,
                        top: 5,
                      ),
                      Positioned(
                        child: Text(
                          "-50%",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        top: 8,
                        left: 17,
                      ),
                      Positioned(
                        child: Image.asset('assets/Images/7.png'),
                        width: 100,
                        height: 100,
                        top: 10,
                        left: 30,
                      ),
                      Positioned(
                        child: Text(
                          "Product title",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.indigo),
                        ),
                        bottom: 55,
                        left: 7,
                      ),
                      Positioned(
                        child: Text(
                          "Write description of\nproduct",
                          style: TextStyle(fontSize: 12, color: Colors.indigo),
                        ),
                        bottom: 30,
                        left: 8,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        right: 10,
                        top: 3,
                      ),
                      Positioned(
                        child: Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.indigo,
                        ),
                        bottom: 3,
                        right: 10,
                      ),
                      Positioned(
                        child: Text(
                          "\$55",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  )
                  // Container(
                  //   height: 200,
                  //   width: 200,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(20)),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
