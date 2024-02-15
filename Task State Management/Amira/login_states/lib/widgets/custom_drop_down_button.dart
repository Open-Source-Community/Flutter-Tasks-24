import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton(
      {super.key, required this.items, required this.hint});
  final List<String> items;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      hint: Text(hint),
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "fill this";
        }
        return null;
      },
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(),
      ),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}
