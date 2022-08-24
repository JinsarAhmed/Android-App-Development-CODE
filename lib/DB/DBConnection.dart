import 'package:mysql1/mysql1.dart';

class DBConnection {
  static Future<MySqlConnection> getDBConnection() async {
    var db;
    if (db == null) {
      var setting = ConnectionSettings(
        host: '10.0.2.2',
        user: 'root',
        db: 'classicmodels',
      );
      db = await MySqlConnection.connect(setting);
    }
    return db;
  }
}
