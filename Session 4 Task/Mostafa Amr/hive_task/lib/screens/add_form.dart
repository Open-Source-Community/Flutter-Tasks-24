import 'package:flutter/material.dart';
import 'package:hive_task/models/data_model.dart';
import 'package:hive_task/screens/home.dart';

import '../local/hive_helper.dart';

class AddForm extends StatelessWidget {
  AddForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add Form",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: AddDataForm(),
        ),
      ),
    );
  }
}

class AddDataForm extends StatefulWidget {
  AddDataForm({
    super.key,
  });

  @override
  State<AddDataForm> createState() => _AddDataFormState();
}

class _AddDataFormState extends State<AddDataForm> {
  String? title, description;

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (newValue) {
                title = newValue;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Field is required';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  label: const Text(
                    "Title",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              onSaved: (newValue) {
                description = newValue;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Field is required';
                } else {
                  return null;
                }
              },
              maxLines: 6,
              decoration: InputDecoration(
                  label: const Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: MaterialButton(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 80),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var dataModel =
                      DataModel(title: title!, description: description!);
                  HiveHelper().insertToDatabase(dataModel);
                  Home.notesNotifier.value = HiveHelper().fetchData();
                  Navigator.pop(context);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              color: Colors.amber,
              child: const Text(
                "Add",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
