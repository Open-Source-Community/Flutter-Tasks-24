import 'package:flutter/material.dart';

import 'package:task_3/Widgets/AddButton.dart';
import 'package:task_3/Widgets/TeamContainer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ScoreTeam1 = 0;
  int ScoreTeam2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff9800),
        title: Text(
          "Points Counter",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      body: Expanded(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamContainer(Score: ScoreTeam1, name: "A"),
              SizedBox(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 40,
                  endIndent: 40,
                ),
              ),
              TeamContainer(
                Score: ScoreTeam2,
                name: "B",
              ),
            ],
          ),
          AddButton(
              text: "Reset",
              onPressed1: () {
                setState(() {
                  ScoreTeam1 = 0;
                  ScoreTeam2 = 0;
                });
              })
        ]),
      ),
    );
  }
}
