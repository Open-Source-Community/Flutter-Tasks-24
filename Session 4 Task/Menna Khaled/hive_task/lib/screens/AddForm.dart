import 'package:flutter/material.dart';
import 'package:hive_task/screens/HomePage.dart';
import '../models/note_model.dart';
import '../services/local/hive_helper.dart';

class AddForm extends StatefulWidget {
  AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(children: [
          TextFormField(
            onSaved: (value) {
              title = value;
            },
            decoration: InputDecoration(labelText: "Title"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Invalid";
              }
            },
          ),
          TextFormField(
            onSaved: (value) {
              description = value;
            },
            decoration: InputDecoration(labelText: "Description"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Invalid";
              }
            },
          ),
          SizedBox(
            height: 60,
          ),
          TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var noteModel = NoteModel(
                    title: title!,
                    description: description!,
                  );
                  HiveHelper().insertToDatabase(noteModel);
                  HomePage.notesNotifier.value = HiveHelper().fetchData();
                  Navigator.pop(context);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: Text("Add"))
        ]),
      ),
    );
  }
}
