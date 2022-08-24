import '../DB/DBConnection.dart';
import '../usermodel/SignInModel.dart';

class SignInHelper {
  void addUser(SignInModel signInModel) async {
    var db = await DBConnection.getDBConnection();
    db.query(
        'Insert into signin(username, password) values("${signInModel.userName}","${signInModel.password}")');
  }

  Future<List<SignInModel>> getAllSignInUsers() async {
    var db = await DBConnection.getDBConnection();
    List<SignInModel> signInUsersList = [];
    var results = await db.query("select * from signin");
    for (var row in results) {
      SignInModel signInModel = SignInModel();
      signInModel.id = row["id"];
      signInModel.userName = row["username"];
      signInModel.password = row["password"];
      signInUsersList.add(signInModel);
    }
    return signInUsersList;
  }

  void updateSignInUser(SignInModel model) async {
    var db = await DBConnection.getDBConnection();
    db.query(
        "update signin SET username = '${model.userName}', password = '${model.password}' WHERE id = ${model.id}");
  }

  void deleteSignInUser(int? id) async {
    var db = await DBConnection.getDBConnection();
    db.query('delete from signin where ${id}');
  }
}
//
// void main() {
//   SignInHelper signInUser = SignInHelper();
//   signInUser.deleteSignInUser(1);
// }
