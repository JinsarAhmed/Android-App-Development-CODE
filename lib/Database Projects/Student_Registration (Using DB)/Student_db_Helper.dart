// import 'package:my_first_app/Stud/StudentInformationModel.dart';
import '../../DB/DBConnection.dart';
import 'StudentInformationModel.dart';

class StudentDBHelper {
  void addUser(StudentInformationModel model) async {
    var db = await DBConnection.getDBConnection();
    db.query(
        'Insert into student_information(name,roll_no,email,department,phone_no) values("${model.name}","${model.roll_no}","${model.email}", "${model.dept}", "${model.phone_no}")');
  }
}
