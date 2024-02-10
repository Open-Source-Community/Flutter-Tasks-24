import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  String text;
  void Function()? onPressed1;
  AddButton({super.key, required this.text, required this.onPressed1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MaterialButton(
        onPressed: onPressed1,
        child: Text(
          "$text",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        color: Color(0xffff9800),
        height: 50,
        minWidth: 120,
      ),
    );
  }
}
