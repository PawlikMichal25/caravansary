import 'package:caravansary/data/spices/model/spice.dart';
import 'package:caravansary/data/spices/spices_database.dart';

class SpicesRepository {
  final SpicesDatabase _database;

  const SpicesRepository(this._database);

  Future<List<Spice>> getAllSpices() {
    return _database.getAllSpices();
  }
}
