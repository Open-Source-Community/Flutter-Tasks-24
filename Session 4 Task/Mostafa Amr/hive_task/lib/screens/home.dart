import 'package:flutter/material.dart';
import 'package:hive_task/screens/add_form.dart';

import '../local/hive_helper.dart';
import '../models/data_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static final notesNotifier =
      ValueNotifier<List<DataModel>>(HiveHelper().fetchData());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          InkWell(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddForm())),
              child: const Icon(
                Icons.add,
                size: 30,
              )),
          const SizedBox(width: 20),
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: notesNotifier,
          builder: (context, value, child) {
            return notesNotifier.value.isEmpty
                ? const Center(
                    child: Text(
                    "No Data",
                    style: TextStyle(fontSize: 30, color: Colors.amber),
                  ))
                : Container(
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                        itemCount: notesNotifier.value.length,
                        itemBuilder: (context, index) {
                          return Dismissible(
                              key: UniqueKey(),
                              direction: DismissDirection.endToStart,
                              onDismissed: (direction) async {
                                if (direction == DismissDirection.endToStart) {
                                  await notesNotifier.value[index].delete();
                                }
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, left: 10),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(25)),
                                child: ListTile(
                                  title: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Text(
                                      notesNotifier.value[index].title,
                                      style: const TextStyle(
                                        fontSize: 28,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                        notesNotifier.value[index].description,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color:
                                                Colors.black.withOpacity(0.7))),
                                  ),
                                ),
                              ));
                        }));
          }),
    );
  }
}
