import 'package:hive/hive.dart';
import '../models/data_model.dart';

class HiveHelper {
  insertToDatabase(DataModel dataModel) async {
    var box = Hive.box<DataModel>('dataBox');
    await box.add(dataModel);
  }

  fetchData() {
    var box = Hive.box<DataModel>('dataBox');
    return box.values.toList();
  }
}
