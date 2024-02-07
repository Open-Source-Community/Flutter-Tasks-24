import 'package:flutter/material.dart';
import 'package:points_counter/widgets/customButton.dart';

class Team extends StatefulWidget {
  final String teamLetter;
  int teamPoints=0;

  Team({super.key, required this.teamLetter});

  @override
  State<Team> createState() => _TeamState();

  void add(int num){
    teamPoints+=num;
  }
  int getTeamPoints(){
    return teamPoints;
  }

}

class _TeamState extends State<Team> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      width: 150,
      child: Column(
        children: [
          Text(
            "Team ${widget.teamLetter}",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "${widget.teamPoints}",
            style: TextStyle(fontSize: 120),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.add(1);
              });
            },
            child: CustomButton(
              numOfPoints: "Add 1 Point",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  widget.add(2);
                });
              },
              child: CustomButton(numOfPoints: "Add 2 Points")),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  widget.add(3);
                });
              },
              child: CustomButton(numOfPoints: "Add 3 Points"))
        ],
      ),
    );
  }
}
