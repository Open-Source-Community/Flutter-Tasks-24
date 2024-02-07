import 'package:flutter/material.dart';
import 'package:points_counter/widgets/customButton.dart';
import 'package:points_counter/widgets/team.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Team(teamLetter: "E"),
                SizedBox(
                  width: 65,
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                    endIndent: 25,
                  ),
                ),
                Team(teamLetter: "B")
              ],
            ),
            GestureDetector(
                onTap: () {
                  setState(() {

                });}, child: CustomButton(numOfPoints: "Reset"))
          ],
        ),
      ),
    );
  }
}
