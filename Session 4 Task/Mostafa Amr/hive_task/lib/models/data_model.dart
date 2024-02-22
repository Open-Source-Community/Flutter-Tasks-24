import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'data_model.g.dart';

@HiveType(typeId: 0)
class DataModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;

  DataModel({required this.title, required this.description});
}
