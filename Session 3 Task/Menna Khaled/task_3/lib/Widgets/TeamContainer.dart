import 'package:flutter/material.dart';

import 'package:task_3/Widgets/AddButton.dart';

class TeamContainer extends StatefulWidget {
  final String name;
  int Score;

  TeamContainer({required this.name, required this.Score, super.key});

  @override
  State<TeamContainer> createState() => _TeamContainerState();
}

class _TeamContainerState extends State<TeamContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Team ${widget.name}",
            style: TextStyle(
              fontSize: 50,
            ),
          ),
          Text(
            "${widget.Score}",
            style: TextStyle(
              fontSize: 100,
            ),
          ),
          AddButton(
              text: "Add 1 Point",
              onPressed1: () {
                setState(() {
                  widget.Score++;
                });
              }),
          AddButton(
              text: "Add 2 Point",
              onPressed1: () {
                setState(() {
                  widget.Score += 2;
                });
              }),
          AddButton(
              text: "Add 3 Point",
              onPressed1: () {
                setState(() {
                  widget.Score += 3;
                });
              })
        ],
      ),
    );
  }
}
