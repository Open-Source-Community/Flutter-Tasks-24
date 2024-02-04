import 'package:flutter/material.dart';
import 'package:points_counter/widgets/custom_button.dart';

class TeamWidget extends StatefulWidget {
  final String teamName;
  int teamScore = 0;

  TeamWidget({super.key, required this.teamName, required this.teamScore});

  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.teamName,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
      ),
      Text(
        maxLines: 1,
        "${widget.teamScore}",
        style: TextStyle(fontSize: 180, fontWeight: FontWeight.w400),
      ),
      CustomButton(
        textbotton: "Add 1 Point",
        onPressed: () {
          setState(() {
            widget.teamScore++;
          });
        },
      ),
      SizedBox(height: 30),
      CustomButton(
        textbotton: "Add 2 Point",
        onPressed: () {
          setState(() {
            widget.teamScore = widget.teamScore + 2;
          });
        },
      ),
      SizedBox(height: 30),
      CustomButton(
        textbotton: "Add 3 Point",
        onPressed: () {
          setState(() {
            widget.teamScore = widget.teamScore + 3;
          });
        },
      ),
    ]);
  }
}
