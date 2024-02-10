import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String textbotton;
  void Function()? onPressed;
  CustomButton({super.key, required this.textbotton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(180, 65)),
              backgroundColor: MaterialStatePropertyAll(
                Color(0xffff9603),
              ),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)))),
          child: Text(
            textbotton,
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          )),
    );
  }
}
