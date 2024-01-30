import 'package:flutter/material.dart';

class BestSelling extends StatelessWidget {
  BestSelling(this.ImageNumber, {Key? key}) : super(key: key);
  String ImageNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffffffff), borderRadius: BorderRadius.circular(20)),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: Color(0xff52529c),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "-50%",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              width: 65,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Color(0xffc6271b),
                ))
          ],
        ),
        Container(
            margin: EdgeInsets.all(10),
            height: 100,
            child: Image.asset("images/$ImageNumber.png")),
        Container(
          margin: EdgeInsets.fromLTRB(5, 5, 40, 5),
          child: Text(
            "Product Title",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff52529c),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 5, 10),
          child: Text(
            "Write description of product",
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff52529c),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                "\$55",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xff52529c),
                ),
              ),
              SizedBox(
                width: 90,
              ),
              Icon(
                Icons.add_shopping_cart,
                color: Color(0xff52529c),
              )
            ],
          ),
        )
      ]),
    );
  }
}
