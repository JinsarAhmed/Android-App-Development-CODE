import '../DB/DBConnection.dart';
import '../usermodel/EmployeeModel.dart';

class EmployeeHelper {
  Future<List<EmployeeModel>> getAllEmployees() async {
    List<EmployeeModel> employeesList = [];
    var db = await DBConnection.getDBConnection();
    var results = await db.query('select * from employees');
    for (var row in results) {
      EmployeeModel employeeModel = EmployeeModel();
      employeeModel.firstName = row[2];
      employeeModel.email = row[4];
      employeesList.add(employeeModel);
    }
    return employeesList;
  }
}
