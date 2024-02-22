import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_task/models/data_model.dart';
import 'package:hive_task/screens/home.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DataModelAdapter());
  await Hive.openBox<DataModel>('dataBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
