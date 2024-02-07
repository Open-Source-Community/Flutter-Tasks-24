import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String numOfPoints;

  const CustomButton({super.key, required this.numOfPoints});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Text(
            "$numOfPoints",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
    );
  }
}