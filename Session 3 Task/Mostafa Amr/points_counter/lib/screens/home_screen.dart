import 'package:flutter/material.dart';
import 'package:points_counter/widgets/team_widget.dart';
import '../widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int team_A = 0;

  int team_B = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff9802),
        elevation: 3,
        title: Text(
          "Points Counter",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: TeamWidget(
                    teamName: "Team A",
                    teamScore: team_A,
                  )),
                  Container(
                    color: Color.fromARGB(255, 214, 214, 214),
                    width: 3,
                    height: 500,
                  ),
                  Expanded(
                      child: TeamWidget(
                    teamName: "Team B",
                    teamScore: team_B,
                  )),
                ],
              ),
              SizedBox(height: 65),
              CustomButton(
                textbotton: "Reset",
                onPressed: () {
                  setState(() {
                    team_A = 0;
                    team_B = 0;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
