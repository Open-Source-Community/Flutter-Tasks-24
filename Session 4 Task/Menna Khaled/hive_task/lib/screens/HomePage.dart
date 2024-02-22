import 'package:flutter/material.dart';
import 'package:hive_task/screens/AddForm.dart';

import '../models/note_model.dart';
import '../services/local/hive_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static final notesNotifier =
      ValueNotifier<List<NoteModel>>(HiveHelper().fetchData());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddForm(),
                  ),
                );
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
        body: ValueListenableBuilder(
            valueListenable: notesNotifier,
            builder: (context, value, child) {
              return ListView.builder(
                  itemCount: notesNotifier.value.length,
                  itemBuilder: (context, index) {
                    return NoteContainer(note: notesNotifier.value[index]);
                  });
            }));
  }
}

class NoteContainer extends StatelessWidget {
  const NoteContainer({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          note.title,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        Text(
          note.description,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 215, 213, 213)),
        )
      ]),
    );
  }
}
